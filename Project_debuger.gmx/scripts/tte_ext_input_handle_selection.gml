/// tte_ext_input_handle_selection( withKeyboard=false )
var doDrag = selDrag;
if( argument_count >= 1 ) doDrag = argument[0];

if( !doDrag ) {
    tte_ext_set_selection_anchor( line, column );
    tte_ext_unselect();
} else {
    if( line < selAnchorLine ) tte_ext_set_selection(
        line,
        column,
        selAnchorLine,
        selAnchorCol
    );
    else if( line > selAnchorLine ) tte_ext_set_selection(
        selAnchorLine,
        selAnchorCol,
        line,
        column
    );
    else if( column < selAnchorCol ) tte_ext_set_selection(
        line,
        column,
        line,
        selAnchorCol
    );
    else tte_ext_set_selection(
        line,
        selAnchorCol,
        line,
        column
    );
}

update = true;
