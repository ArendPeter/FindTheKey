var target_level = argument[0];

var target_type;
if(argument_count == 2){
    target_type = argument[1];
}else{
    target_type = "NORMAL";
}

with(oLevelControl){
    var output = level_states[? target_type+"_"+string(target_level)] == LEVEL_STATE.COMPLETE;
    return output;
}
