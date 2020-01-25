///Console_watch(StringObject,StringVariable);
//This script will add the given <variable> to the tracking list of each instance followers tracking down the given <object>



var Tracked_object;
var Variable_to_watch;
var u;

with(object_instance_follower){ //We add the variable if not already there
    if Instance_string_name = Tracked_object{ //Cela veut dire que l'on traque l'instance
        if variable_instance_exists(Instance_to_track, Variable_to_watch){
            
            for(u=0;i<array_height_2d(Variables);u+=1){
                if Variables[u,0] = Variable_to_watch{
                    break;
                    }
                if Variables[u,0] = ""{ //Si une place est libre !
                    Variables[u,0] = Variable_to_watch
                    }
                }
            }
        }
    }

