///__spse_string_to_color(String);
//This script assumes that the variable Color exists;

switch(string(argument0)){
    case "white":
        Color = c_white;
        break;
    
    case "red":
        Color = c_red;
        break;
        
    case "black":
        Color = c_black;
        break;
        
    case "blue":
        Color = c_navy;
        break;
        
    case "purple":
        Color = c_purple;
        break;
        
    case "grey":
    case "gray":
        Color = c_gray;
        break;
        
    case "yellow":
        Color = c_yellow;
        break;
    
    default:
        Color = c_white;
        break;
    
    }

