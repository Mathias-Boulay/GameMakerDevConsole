/// tte_ext_move_cursor( line, col, relative=false )
var l,c,r;
l = argument[0];
c = argument[1];
if( argument_count >= 3 ) r = argument[2]; else r = false;

var dir = -1;

if( r ) {
    if( c < 0 ) repeat( abs(c) ) {
        if( column > 1 ) column--;
        else if( line > 0 ) {
            line--;
            column = string_length( lines[| line] )+1;
        }
    }
    if( c > 0 ) repeat( c ) {
        dir = 1;
        if( column <= string_length( lines[| line] ) ) column++;
        else if( line < ds_list_size( lines )-1 ) {
            column = 1;
            line++;
        }
    }
    if( l < 0 ) repeat( abs(l) ) {
        if( line > 0 ) {
            line--;
            column = min( string_length( lines[| line] )+1, column );
        }
    }
    if( l > 0 ) repeat( l ) {
        if( line < ds_list_size( lines )-1 ) {
            line++;
            column = min( string_length( lines[| line] )+1, column );
        }
    }
}
else {
    line = l;
    column = c;
}

// Make sure we don't end up inside a '\#'
if( string_char_at( lines[| line], column ) == '#' ) column = max( 1, column+dir );

update = true;
