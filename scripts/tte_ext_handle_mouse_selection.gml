/// tte_ext_handle_mouse_selection( mx, my );
var mx, my;
mx = argument[0];
my = argument[1];

draw_set_font( font );
            
var c,i,j=0,mh,ch=0,cw=0,ccw=0,lcw=0;
mh = string_height( "|" );
for( i=0; i<ds_list_size( lines ); i++ ) {
    if( my >= ch && my <= ch + max( mh, string_height( lines[| i] ) ) ) {
        if( string_length( lines[| i] ) == 0 ) {
            column = 1;
            line = i;
            tte_ext_input_handle_selection();
        }
        else for( j=1; j<=string_length( lines[| i] ); j++ ) {
            c = string_char_at( lines[| i], j );
            ccw = string_width( c );
            
            if( mx >= cw - lcw*0.6 && mx <= cw + ccw*0.6 ) {
                column = j;
                line = i;
                tte_ext_input_handle_selection();
                break;
            }
            else {
                cw = string_width(string_copy( lines[| i],1,j ));
                lcw = ccw;
            }
        }
        
        if( j == string_length( lines[| i] )+1 ) {
            column = j;
            line = i;
            tte_ext_input_handle_selection();
        }
        
        forceCaret = true;
        selDrag = true;
        break;
    }
    ch += max( mh, string_height( lines[| i] ) );
}
