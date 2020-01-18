///__spse_logs_update(String, color);
//Used only by the others functions !
//Developper, don't use this !

//The script adds a text with the color to use. Can use only one line.
for(i=array_height_2d(Logs);i>0;i--){
    Logs[i+1,0] = Logs[i,0];
    Logs[i+1,1] = Logs[i,1];
    ConvertedLogs[i+1] = ConvertedLogs[i]
    }
Logs[0,0] = string(argument0);
Logs[0,1] = string(argument1);
ConvertedLogs[0] = __spse_text_converter_to_sprite_index(Logs[0,0]);

