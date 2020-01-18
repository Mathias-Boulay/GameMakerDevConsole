/// tte_ext_selection_delete()
var i,first, last;
first = string_copy( lines[| selStartLine], 1, selStartCol-1 );
last = string_copy( lines[| selEndLine], selEndCol, string_length( lines[| line] )-selEndCol+1 );

if( selStartLine != selEndLine ) ds_list_delete( lines, selEndLine );
for( i=selEndLine-1; i>selStartLine; i-- ) ds_list_delete( lines, i );

lines[| selStartLine] = first + last;
tte_ext_move_cursor( selStartLine, selStartCol );
tte_ext_unselect();
