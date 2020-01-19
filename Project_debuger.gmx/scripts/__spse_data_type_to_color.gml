///__spse_data_type_to_color(...);
//This script will return a color depending of the type of the variable.
//This script assumes that the variable exists...
switch(typeof(argument0)){
    
    case "number":
        return RealColor;
        
    case "string":
        return StringColor;
        
    case "array":
        return ArrayColor;
        
    case "int32":
        return Int32Color;
        
    case "int64":
        return Int64Color;
        
    case "ptr": //This means a pointer
        return PointerColor;
        
    case "undefined": // ~ var tmp;
        return UndefinedColor;
    
    case "null": //Shouldn't be seen !
        return NullColor;
    
    case "vec3": //Meh, pretty much useless in 2d projects...
        return Vec3Color;
        
    case "vec4": //Meh, pretty much useless in 2d projects...
        return Vec4Color;
        
    case "unknown": //Your RAM stick gonna die, buddy.
        return UnknownColor;
    }
