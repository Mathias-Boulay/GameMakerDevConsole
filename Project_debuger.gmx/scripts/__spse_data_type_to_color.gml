///__spse_data_type_to_color(...);
//This script will return a color depending of the type of the variable.
//This script assumes that the variable exists...
with(object_main_console){

    if is_undefined(variable_instance_get(id,argument0)){
        return UndefinedColor;
        }
    
    if is_string(variable_instance_get(id,argument0)){
        return StringColor;
        }
        
    if is_ptr(variable_instance_get(id,argument0)){
        return PointerColor;
        }
        
    if is_vec3(variable_instance_get(id,argument0)){
        return Vec3Color;
        }
        
    if is_vec4(variable_instance_get(id,argument0)){
        return Vec4Color;
        }
    
    if is_array(variable_instance_get(id,argument0)){
        return ArrayColor;
        }
        
    if is_int32(variable_instance_get(id,argument0)){
        return Int32Color;
        }
    
    if is_int64(variable_instance_get(id,argument0)){
        return Int64Color;
        }
        
    if is_real(variable_instance_get(id,argument0)){
        return RealColor;
        }
    }
