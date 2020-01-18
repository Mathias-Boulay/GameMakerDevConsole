/// tte_ext_input_set_text( text )
var c,t,w,l;
t = argument[0];
l = ds_list_create();
w = "";

var p = string_pos( "#", t );

while( p > 0 ) {
    if( p > 1 ) {
        if( string_char_at( t, p-1 ) == '\' ) w += string_copy( t, 1, p );
        else ds_list_add( l, w + string_copy( t, 1, p-1 ) );
    }
    else {
        ds_list_add( l, w + string_copy( t, 1, p-1 ) );
    }
    
    t = string_copy( t, p+1, string_length( t ) - p  );
    p = string_pos( "#", t );
}

if( t != '' ) ds_list_add( l, t );

ds_list_clear( lines );
ds_list_destroy( lines );

lines = l;

var lastl = ds_list_size( lines )-1;
tte_ext_move_cursor( lastl, string_length( lines[| lastl] )+1 );
