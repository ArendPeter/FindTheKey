with(oLevelControl){
    level_scores[? level_type+"_"+string(level_index)] = max(
        level_scores[? level_type+"_"+string(level_index)],
        instance_number(oBarrel)
    )
    level_states[? level_type+"_"+string(level_index)] = LEVEL_STATE.COMPLETE;
    
    //vvv shameless plug to my if statement tricks tutorial vvv 
    //    https://www.youtube.com/watch?v=YAT4y-kpRUM
    //      (or check the description)
    // ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    var next_level_locked = level_states[? level_type+"_"+string(level_index+1)] == LEVEL_STATE.LOCKED;
    if(next_level_locked){
        level_states[? level_type+"_"+string(level_index+1)] = LEVEL_STATE.UNPLAYED;
    }
}
