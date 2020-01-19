///console_set_overlay_drawing(Boolean);
//This script set the state of the overlay you can see on debuged instances:
with(object_main_console){

    if is_bool(argument0){
        Overlay_drawing = argument0;
        }
    else{
        __spse_logs_update("Failed to change overlay drawing state","red");
        }
        
    }


