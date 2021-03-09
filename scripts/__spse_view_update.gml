///__spse_view_update();

/*This script will just tell to the console if a view is present, and if there is one, will take the first visible view;
  It will then reconfigure the console visual parameters to better fit the actual situation.
  We have to figure out how to size the console since we can't rely on the gui size. */
  
//MUST BE USED ONLY WITH THE MAIN CONSOLE !
var __tpm = 0;

View = -1;
__tmp = 0;
if view_enabled{
    repeat(8){
        if view_visible[__tmp]{
            View = __tmp;
            exit;
            }
        __tmp +=1;
        }
    }
    
if View = -1{
    //No view, amarite;
    Console_width = room_width-2;
    Console_height = max(room_height/2,min(240,room_height));
    x = 0;
    y = 0;
    }
else{
    Console_width = view_wview[View]-2;
    Console_height = max(view_hview[View]/2,min(240,view_hview[View]));
    }
    
alarm[10] = room_speed; //Update the size every second.
