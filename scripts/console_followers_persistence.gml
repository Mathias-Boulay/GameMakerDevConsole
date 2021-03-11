///console_followers_persistence(Boolean);
/*This function set the behavior of the instance follower 
when the instance he followed doesn't exists anymore*/

//Failsafe
if(!__spse_failsafe(argument_count, 1, 1)) exit;

if is_string(argument0){
    switch(string_lower(string_letters(argument0))){
        case "true":
            Auto_destroy_instance_follower = true;
            break;
        case "false":
            Auto_destroy_instance_follower = false;
            break;
        default:
            __spse_logs_update("Failed to change the behavior of instances followers.","red");
            break;
        }
    }
else{
    if is_bool(argument0){
        Auto_destroy_instance_follower = argument0;
        }
    else{
        __spse_logs_update("Failed to change the behavior of instances followers.","red");
        }
    }
    
//Give some feedback
__spse_logs_update("Auto destroy state set to: " + string(Auto_destroy_instance_follower), "white");    
    

