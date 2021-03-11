# Game Maker Development Console
## Introduction
You're coding your new feature, everything seems good, **until** a bug arises !
You don't panic, you stop the game, relaunch it in Debug mode to  check step by step, but soon realize that the bug occurs at random times, making debugging it unreliable.

*That's why this console is here.*

## Features
- Watch, track and set variables from any object
- Execute custom commands of your liking
- Do not interfere with the render *(all changes are restored upon finishing the render)*
- Force certain or **all** instances to be visible
- Display an overlay on all debugged instances
- Log system
- See the last recorded state of an object

## Getting started
To implement the console into your codebase, import the whole extension (sprite included) and place the following piece of code at the start of your game.

`console_init();` 

This will create the console and it will sit on the background until you need it.

### How to use the console
If you want to make the console (dis)appear, **press F4**.


To create a tracker for a specific instance, **middle click** with the mouse on the specific instance.


When the console is visible and the game focused, you can type any command already available.



## Commands
All console commands are actually scripts starting with "console_" under the resource tree.

<details> <summary>Here's a list of all default commands</summary>



### Settings
`overlay_drawing [bool]`
Set the visibility state of the overlay drawn of top of debugged object sprites.

`followers_persistence [bool]`
Set whether or not the tracker stays after the object death, allowing to check its last state.

`debug_instance_visible [bool]`
Set whether or not debugged instances should be forced visible.

`all_instance_visible [bool]`
Set whether or not **all** instances should be forced visible.
Overrides `debug_instance_visible`.

### Others
`count [all/object_name]`
Return the number of active instances from a specified `object_name`
The keyword `all` will return how many instances are active.
Instances related to debugging are **filtered out**.

`create [X] [Y] [object_name] <Number>`
Create an instance of `object_name` at the specified position.
The optional argument `Number` allows to create many instances at once.

`kill [object_name]`
Kill all instances of the specified `object_name`.

`watch <all> [object_name] [variable_name]`
Start watching the specified `variable_name` of all debugged instances of `object_name`.
If the optional `all` keyword is used, a tracker watching the `variable_name` is created for each instance of `object_name` that wasn't debugged so far.

`track <all> [object_name]`
Start **tracking** all debugged instance of `object_name`
If the optional `all` keyword is used, a tracker **tracking** the `object_name` is created for each instance of `object_name` that wasn't debugged so far.

**Note:** Tracking != watching. 
Tracking is equivalent to watch **ALL** variables of the instance.
While it allows to see new variables being added, it is WAY MORE EXPENSIVE than simply watching a pre-defined set of variables.

`set <all> [object_name] [variable_name] [variable_value]`
Set the specified `variable_name` of all debugged instances of `object_name` to the specified `variable_value`.
Can be a real, boolean or a string.
The optional keyword `all` can be used set the value to **all** instances of `object_name`.

</details>

## Creating custom commands !

<details> <summary>That's right, to better fit the custom workflow of your game, you can add custom commands of your own !</summary>




First, create a script under *Scripts>SPSE_console>User>commands* and name it *console_<command_name>*

Then you can start by using this template:
``` java
///console_<command_name>();
/*
  A description of what this custom command does.
  Make it simple, this shouldn't be the whole documentation
  
*/


/*
  All args are passed as string, so you need to convert them into the type you need.
*/


/*
  Check if the command is from the console,
  and if the number of args matches what you want.
  Shall the failsafe fail, the custom command will exit
*/
if(!__spse_failsafe(argument_count, 0 /*min_args*/, 0 /*max_args*/)) exit;


//Check if the optional keyword 'all/any' is present.
if (__spse_is_scope_global("any" /*argument[X]*/)){
    
    //Console logs to give feedback.
    console_show_debug("The scope is global");
    console_show_warning("The scope is global");
    console_show_error("The scope is global");
    
    }
    
/*
  Your code logic goes here.
  Remember this code is executed from the console.
*/
```
After adapting the template to your need, you can execute the command through the console with your `command_name`.

</details>
