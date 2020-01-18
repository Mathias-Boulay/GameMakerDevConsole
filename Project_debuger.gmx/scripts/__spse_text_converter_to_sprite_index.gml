///__spse_text_converter_to_sprite_index(TextToConvert);

var Font_map = '!"#$%&'+"'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ";

var Word = string(argument0);
var Idraw = 0;
var Youdraw;
var Converted;

if string_length(Word) > 0{
    repeat(string_length(Word)){
        Idraw += 1;
        Youdraw = 0; 
        repeat(string_length(Font_map)){
            Youdraw += 1;
            if string_char_at(Word,Idraw) = string_char_at(Font_map,Youdraw){
                Converted[Idraw-1] = Youdraw-1;
                break;
                }
            }
        }
    return Converted;
    }
