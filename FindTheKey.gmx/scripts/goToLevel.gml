var target_level = argument[0];

var target_type;
if(argument_count == 2){
    target_type = argument[1];
}else{
    target_type = LEVEL_TYPE.NORMAL;
}

with(oLevelControl){
    level_index = target_level;
    level_type = target_type;
    
    var current_level = getLevelKey(level_type, level_index);
    if(level_states[? current_level ] == LEVEL_STATE.UNPLAYED){
        level_states[? current_level ] = LEVEL_STATE.PLAYED;
    }
    room_goto(levels[? current_level ]);
}
