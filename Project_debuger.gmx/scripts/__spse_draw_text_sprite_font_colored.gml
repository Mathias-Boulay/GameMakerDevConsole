///__spse_draw_text_sprite_font_colored(x, y, ConvertedWordToDraw,color);
//Requires a converted text

var xx = argument0;
var yy = argument1;
var Word = argument2;
var Color = string_lower(argument3);

var counter = 0;
__spse_string_to_color(Color);
draw_set_colour(Color);

repeat(array_length_1d(Word)){
    draw_sprite(sprite_console_font,Word[counter],xx,yy);
    xx+=8;
    counter+=1;
    }
