var target_level = argument[0];

var target_type;
if(argument_count == 2){
    target_type = argument[1];
}else{
    target_type = "NORMAL";
}

with(oLevelControl){
    level_index = target_level;
    level_type = target_type;
    
    if(level_states[? level_type+"_"+string(level_index) ] == LEVEL_STATE.UNPLAYED){
        level_states[? level_type+"_"+string(level_index) ] = LEVEL_STATE.PLAYED;
    }
    
    room_goto(levels[? level_type+"_"+string(level_index)]);
}
