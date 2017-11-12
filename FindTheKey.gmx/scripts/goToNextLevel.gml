with(oLevelControl){
    level_index++;
    
    if(level_states[? level_type+"_"+string(level_index) ] == LEVEL_STATE.UNPLAYED){
        level_states[? level_type+"_"+string(level_index) ] = LEVEL_STATE.PLAYED;
    }
    
    room_goto(levels[? level_type+"_"+string(level_index)]);
}
