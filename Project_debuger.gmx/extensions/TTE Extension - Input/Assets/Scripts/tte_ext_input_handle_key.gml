var key = argument[0];
var ctrl =  argument[1];
var alt = argument[2];
var shift = argument[3];

switch( key ) {
    case vk_left:
        if( shift && !tte_ext_has_selection() ) tte_ext_set_selection_anchor( line, column );
        tte_ext_move_cursor( 0, -1, true );
        if( shift ) tte_ext_input_handle_selection( true );
        else tte_ext_unselect();
    break;
    case vk_right:
        if( shift && !tte_ext_has_selection() ) tte_ext_set_selection_anchor( line, column );
        tte_ext_move_cursor( 0, 1, true );
        if( shift ) tte_ext_input_handle_selection( true );
        else tte_ext_unselect();
    break;
    case vk_up:
        if( !multiline ) break;
        if( shift && !tte_ext_has_selection() ) tte_ext_set_selection_anchor( line, column );
        tte_ext_move_cursor( -1, 0, true );
        if( shift ) tte_ext_input_handle_selection( true );
        else tte_ext_unselect();
    break;
    case vk_down:
        if( !multiline ) break;
        if( shift && !tte_ext_has_selection() ) tte_ext_set_selection_anchor( line, column );
        tte_ext_move_cursor( 1, 0, true );
        if( shift ) tte_ext_input_handle_selection( true );
        else tte_ext_unselect();
    break;
    case vk_home:
        if( shift && !tte_ext_has_selection() ) tte_ext_set_selection_anchor( line, column );
        tte_ext_move_cursor( line, 1 );
        if( shift ) tte_ext_input_handle_selection( true );
        else tte_ext_unselect();
    break;
    case vk_end:
        if( shift && !tte_ext_has_selection() ) tte_ext_set_selection_anchor( line, column );
        tte_ext_move_cursor( line, string_length( lines[| line] ) + 1 );
        if( shift ) tte_ext_input_handle_selection( true );
        else tte_ext_unselect();
    break;
    case vk_delete:
        if( tte_ext_has_selection() ) tte_ext_selection_delete();
        else {
            if( column <= string_length( lines[| line] ) ) {
                var wasHash = false;
                if( string_char_at( lines[| line], column ) == '\' ) {
                    if( column < string_length( lines[| line] ) ){
                        if( string_char_at( lines[| line], column+1 ) == '#' ) wasHash = true;
                    }
                }
                if( wasHash ) lines[| line] = string_delete( lines[| line], column, 2 );
                else lines[| line] = string_delete( lines[| line], column, 1 );
            }
            else if( line < ds_list_size( lines )-1 ) {
                lines[| line] += lines[| line+1];
                ds_list_delete( lines, line+1 );
            }
        }
    break;
    case vk_backspace:
        if( tte_ext_has_selection() ) tte_ext_selection_delete();
        else {
            if( column > 1 ) {
                if( string_char_at( lines[| line], column-1 ) == '#' ) {
                    column-=2;
                    lines[| line] = string_delete( lines[| line], column, 2 );
                }
                else {
                    column--;
                    lines[| line] = string_delete( lines[| line], column, 1 );
                }
            }
            else if( line > 0 ) {
                column = string_length( lines[| line-1] )+1;
                lines[| line-1] += lines[| line];
                ds_list_delete( lines, line );
                line--;
            }
        }
    break;
    case vk_enter:
        if( !multiline ) break;
        if( tte_ext_has_selection() ) tte_ext_selection_delete();
        else {
            ds_list_insert(
                lines,
                line+1,
                string_copy( lines[| line], column, string_length( lines[| line] ) - column+1 )
            );
            lines[| line] = string_copy( lines[| line], 1, column-1 );
            line++;
            column = 1;
        }
    break;
}
    
forceCaret = true;
