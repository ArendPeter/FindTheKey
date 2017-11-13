with(oLevelControl){
    level_index++;
    
    var new_level = getLevelKey(level_type, level_index);
    if(level_states[? new_level ] == LEVEL_STATE.UNPLAYED){
        level_states[? new_level ] = LEVEL_STATE.PLAYED;
    }
    
    room_goto(levels[? new_level]);
}
