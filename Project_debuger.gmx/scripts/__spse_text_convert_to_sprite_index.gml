///__spse_text_convert_to_sprite_index(Text to convert);
//Should be use everywhere aside from the draw events:

var Font_map = '!"#$%&'+"'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ";
var Word = argument0;
var Converted = "";

for(Idraw=1;Idraw <= string_length(Word);Idraw+=1){
    for(Youdraw=1;Youdraw <= string_length(Font_map);Youdraw+=1){
        if string_char_at(Word,Idraw) = string_char_at(Font_map,Youdraw){
            Converted += string(Youdraw-1);
            break;
            }
        }
    }
