///__spse_commands_history_update();
//This script update the commands history
//Only usable by the main console !
for(i=8;i>0;i--){
    Commands_history[i+1] = Commands_history[i];
    }
Commands_history[0] = Typed_text;
    