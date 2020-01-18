/// tte_ext_input_get_text()
var l, lt, txt = "";
for( l=0; l<ds_list_size( lines ); l++ ) {
    if( txt != "" ) txt += "#";
    txt += lines[| l];
}
return txt;
