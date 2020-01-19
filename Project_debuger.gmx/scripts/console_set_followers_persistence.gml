///console_set_followers_persistence(Boolean);
/*This function set the behavior of the instance follower 
when the instance he followed doesn't exists anymore*/

if is_bool(argument0){
    Auto_destroy_instance_follower = argument0;
    }
else{
    __spse_logs_update("Failed to change the behavior of instances folowers.","red");
    }
