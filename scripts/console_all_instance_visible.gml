///console_all_instance_visible(Boolean);
/*This function set the visibility state of all instances. Can cause bugs !*/

//Failsafe
if(!__spse_failsafe(argument_count, 1, 1)) exit;

if is_string(argument0){
    switch(string_lower(string_letters(argument0))){
        case "true":
            Force_all_instances_visible = true;
            break;
        case "false":
            Force_all_instances_visible = false;
            break;
        default:
            __spse_logs_update("Failed to change the visibility state of all instances.","red");
            break;
        }
    }
else{
    if is_bool(argument0){
        Force_all_instances_visible = argument0;
        }
    else{
        __spse_logs_update("Failed to change the visibility state of all instances.","red");
        }
    }
    
//Give some feedback
__spse_logs_update("global instance visibility set to: " + string(Force_all_instances_visible), "white");
        
    
