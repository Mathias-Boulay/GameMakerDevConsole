///__spse_execute_command(StringCommand);
//This script will
var String = string(argument0)+" "; //Yeah I know this is kind of a hack but I don't care at this stage.
var Command = string_copy(String,1,string_pos(" ",String)-1);
String = string_delete(String,1,string_pos(" ",String));
var parameters;
var tmp_counter = 0;
var Script;

for(i=0;i<15;i++){
    parameters[i] = "";
    }


while(String != ""){
    //Remove spaces until we find parameters
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
Script = asset_get_index("console_"+String);
if Script != -1{
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
    }

