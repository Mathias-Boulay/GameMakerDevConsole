/// Handle mouse

var mx, my;
mx = ( mouse_x - x - padding_left );
my = ( mouse_y - y - padding_top );

if( point_in_rectangle( mx, my, 0, 0, width-1, height-1 ) ) {
    hover = true;
    
    if( mouse_check_button( mb_left ) ) {
        if( mouse_check_button_pressed( mb_left ) ) {
            focus = true;
            selDrag = false;
            selVisible = false;
            update = true;
        }
        if( hover_x != mx || hover_y != my && focus ) {
            hover_x = mx;
            hover_y = my;
            
            tte_ext_handle_mouse_selection( mx+scrollx, my+scrolly );
        }
    }
}
else {
    hover = false;
    if( mouse_check_button_pressed( mb_left ) ) {
        focus = false;
        caretVisible = false;
        caretTimer += caretDelay;
        update = true;
    }
    
}
