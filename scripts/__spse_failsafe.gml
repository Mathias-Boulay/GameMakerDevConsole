///__spse_failsafe(Real argumentCount, Real minArgsNumber, Real maxArgsNumber);
/*
  This script should be called only from other scripts used by the console.
  It allows to check if the command was properly filled with its args
  Should only be used as seen in the template
  */
  var is_good = true;
  
if(!__spse_calling_instance("object_main_console")){
    __spse_logs_update("Trying to execute a console script outside of the console","red");
    is_good = false;
    }
    
if ((argument0 < argument1) || (argument0 > argument2)){
    __spse_logs_update("Wrong number of arguments", "red");
    __spse_logs_update("Expected: " + string(argument1) + " - " + string(argument2), "red");
    __spse_logs_update("Provided: " + string(argument0), "red");
    is_good = false;
    }

return is_good;
