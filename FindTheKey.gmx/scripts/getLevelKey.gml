var level_type = argument0;
var level_index = argument1;

//error checking is another good tip, saves on debugging time
if(level_type == LEVEL_TYPE.NONE){
    show_error("Can't get level key for NONE type", true);
}

if(is_string(level_type)){
    show_error("Dude use the LEVEL_TYPE enum, it's cooler than strings", true);
}

return string(level_type) + "_" + string(level_index);
