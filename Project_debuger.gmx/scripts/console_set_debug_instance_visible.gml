///console_set_debug_instance_visible(Boolean);
/*This function set the visibility state of the debug instance. Can cause bugs !*/
with(object_main_console){
    if is_bool(argument0){
        Force_debug_instances_visible = argument0;
        }
    else{
        __spse_logs_update("Failed to change the visibility state of debug instances.","red");
        }
    }
