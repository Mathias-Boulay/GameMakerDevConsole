/// tte_ext_set_selection( start_line, start_col, end_line, end_col )
var sl, sc, el, ec;
sl = argument[0];
sc = argument[1];
el = argument[2];
ec = argument[3];

selStartLine = sl;
selStartCol = sc;
selEndLine = el;
selEndCol = ec;

selVisible = true;
update = true;
