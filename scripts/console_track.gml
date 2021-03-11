///console_track([Stringscope],StringObject);
//This script will tell the concerned instances follower to track their tracked instance.

//Failsafe
if(!__spse_failsafe(argument_count, 1, 2)) exit;

var Scope = __spse_is_scope_global(argument0);
var StringObject;

if Scope{
    StringObject = argument1;
    }
else{   
    StringObject = argument0;
    }
    
    
//With instances already there:
with(object_instance_follower){
    if Instance_string_name = StringObject{
        STATE = "TRACK";
        }
    }
    
if Scope{
    var u;
    
    with(asset_get_index(StringObject)){
        if(object_get_name(object_index) = StringObject){
            //We create an instance follower and affects it your variable.
            for(u=0;u<array_length_1d(object_main_console.Tracked_instances);u+=1){
                if object_main_console.Tracked_instances[u] = id{
                    break;
                    }
                }
                
            if u = array_length_1d(object_main_console.Tracked_instances){
                //The it means the id of this instance isn't tracked !
                object_main_console.Tracked_instances[u] = id;
                
                var This_instance_follower;
                This_instance_follower = instance_create(0,0,object_instance_follower);
                
                This_instance_follower.Instance_to_track = id;
                This_instance_follower.Instance_name = __spse_text_converter_to_sprite_index(StringObject+"!");
                This_instance_follower.Instance_string_name = StringObject;
                
                This_instance_follower.STATE = "TRACK";
                
                //Initialize bounding boxes
                //The added char serves to have the correct length:
                This_instance_follower.box_left = This_instance_follower.xx - ((__spse_string_size(This_instance_follower.Instance_string_name+">")/2)+2);
                This_instance_follower.box_right = This_instance_follower.xx + ((__spse_string_size(This_instance_follower.Instance_string_name+">")/2)+2);
                This_instance_follower.box_top = This_instance_follower.yy - 7;
                This_instance_follower.box_bottom = This_instance_follower.yy + 7;
                
                }
            }
        }
    }

//Give some feedback
__spse_logs_update("Started tracking " + StringObject, "white");

