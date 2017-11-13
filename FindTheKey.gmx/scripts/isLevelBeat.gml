var target_level = argument[0];

var target_type;
if(argument_count == 2){
    target_type = argument[1];
}else{
    target_type = LEVEL_TYPE.NORMAL;
}

with(oLevelControl){
    return level_states[? getLevelKey(target_type, target_level)] == LEVEL_STATE.COMPLETE;
}
