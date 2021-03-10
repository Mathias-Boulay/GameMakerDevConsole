///__spse_execute_command(StringCommand);
//This script will dynamicly execute a script starting with "console_"

//Unfortunatly and by default, the script will always receive 15 arguments as strings. 
//If not fullfilled, they will be empty strings.
    
var String = string(argument0)+" "; //Yeah I know this is kind of a hack but I don't care at this stage.
if string_replace_all(String," ","") != ""{ //If there arn't only spaces

//Clear the display output:
__spse_commands_history_update();

while(string_char_at(String,1) = " "){String = string_delete(String,1,1);} //Remove all initial/accidental spaces.

    var Command = string_copy(String,1,string_pos(" ",String)-1); //Store the command
    String = string_delete(String,1,string_pos(" ",String)); 
    var parameters = 0; //An array with all 15 arguments
    var tmp_counter = 0; 
    var Script; //The asset found within the resources tree.
    
    
    
    while(String != ""){
        //Remove spaces until we find parameters. Allows for virtually unlimited spaces between each arguments.
        if string_char_at(String,1) = " "{
            String = string_delete(String,1,1);
            }
        else{
            //Go grab the argument
            parameters[tmp_counter] = string_copy(String,1,string_pos(" ",String)-1);
            String = string_delete(String,1,string_pos(" ",String));
            tmp_counter+=1;
            }
        }
        
    //Okay now we have all, lets find the script !
    Script = asset_get_index("console_"+Command);
    if Script != -1{
        __spse_logs_update('Executing '+ Command ,"purple"); //Debug
        //I don't want to do it this way, but we can't pass an array of args...
        switch(array_length_1d(parameters)){
            case 0:
                script_execute(Script);
                break;
                
            case 1:
                script_execute(Script, parameters[0]);
                break;  
                
            case 2:
                script_execute(Script, parameters[0], parameters[1]);
                break;
                
            case 3:
                script_execute(Script, parameters[0], parameters[1], parameters[2]);
                break;
            
            case 4:
                script_execute(Script, parameters[0], parameters[1], parameters[2], parameters[3]);
                break;
                
            case 5:
                script_execute(Script, parameters[0], parameters[1], parameters[2], parameters[3], parameters[4]);
                break;
                
            case 6:
                script_execute(Script, parameters[0], parameters[1], parameters[2], parameters[3], parameters[4], parameters[5]);
                break;
                
            case 7:
                script_execute(Script, parameters[0], parameters[1], parameters[2], parameters[3], parameters[4], parameters[5], parameters[6]);
                break;
                
            case 8:
                script_execute(Script,parameters[0],
                                parameters[1],
                                parameters[2],
                                parameters[3],
                                parameters[4],
                                parameters[5],
                                parameters[6],
                                parameters[7]
                                );
                break;
                
            case 9:
                script_execute(Script,parameters[0],
                                parameters[1],
                                parameters[2],
                                parameters[3],
                                parameters[4],
                                parameters[5],
                                parameters[6],
                                parameters[7],
                                parameters[8]
                                );
                break;
                
            case 10:
                script_execute(Script,parameters[0],
                                parameters[1],
                                parameters[2],
                                parameters[3],
                                parameters[4],
                                parameters[5],
                                parameters[6],
                                parameters[7],
                                parameters[8],
                                parameters[9]
                                );
                break;
                
            case 11:
                script_execute(Script,parameters[0],
                                parameters[1],
                                parameters[2],
                                parameters[3],
                                parameters[4],
                                parameters[5],
                                parameters[6],
                                parameters[7],
                                parameters[8],
                                parameters[9],
                                parameters[10]
                                );
                break;
                
            case 12:
                script_execute(Script,parameters[0],
                                parameters[1],
                                parameters[2],
                                parameters[3],
                                parameters[4],
                                parameters[5],
                                parameters[6],
                                parameters[7],
                                parameters[8],
                                parameters[9],
                                parameters[10],
                                parameters[11]
                                );
                break;
                
            case 13:
                script_execute(Script,parameters[0],
                                parameters[1],
                                parameters[2],
                                parameters[3],
                                parameters[4],
                                parameters[5],
                                parameters[6],
                                parameters[7],
                                parameters[8],
                                parameters[9],
                                parameters[10],
                                parameters[11],
                                parameters[12]
                                );
                break;
                
            case 14:
                script_execute(Script,parameters[0],
                                parameters[1],
                                parameters[2],
                                parameters[3],
                                parameters[4],
                                parameters[5],
                                parameters[6],
                                parameters[7],
                                parameters[8],
                                parameters[9],
                                parameters[10],
                                parameters[11],
                                parameters[12],
                                parameters[13]
                                );
                break;
                
            case 15:
                script_execute(Script,parameters[0],
                                parameters[1],
                                parameters[2],
                                parameters[3],
                                parameters[4],
                                parameters[5],
                                parameters[6],
                                parameters[7],
                                parameters[8],
                                parameters[9],
                                parameters[10],
                                parameters[11],
                                parameters[12],
                                parameters[13],
                                parameters[14]
                                );
                break;
                
            default:
                //Allow to ignore more than 16 args.
                script_execute(Script,parameters[0],
                                parameters[1],
                                parameters[2],
                                parameters[3],
                                parameters[4],
                                parameters[5],
                                parameters[6],
                                parameters[7],
                                parameters[8],
                                parameters[9],
                                parameters[10],
                                parameters[11],
                                parameters[12],
                                parameters[13],
                                parameters[14],
                                parameters[15]
                                );
                break;
                
            }//End of this way too big switch statement
            
        }
    else{
        __spse_logs_update('Commmand "'+ Command +'" not found !',"red"); //Error
        }
    }

