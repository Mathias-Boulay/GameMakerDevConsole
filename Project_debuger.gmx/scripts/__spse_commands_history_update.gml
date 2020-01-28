///__spse_commands_history_update();
//This script update the commands history and clear the Typed text.
//Only usable by the main console !
with(object_main_console){

for(i=array_length_1d(Commands_history)-2;i>=0;i--){
    Commands_history[i+1] = Commands_history[i];
    }
Commands_history[0] = Typed_text;
//Clear what the user typed.
Typed_text = "";
Displayed_text = "";
blink_position = 1;

}
    
