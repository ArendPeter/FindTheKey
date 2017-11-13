with(oLevelControl){
    var current_level = getLevelKey(level_type, level_index);
    level_scores[? current_level] = max(
        level_scores[? current_level],
        instance_number(oBarrel)
    )
    level_states[? current_level] = LEVEL_STATE.COMPLETE;
    
    //vvv shameless plug to my if statement tricks tutorial vvv 
    //    https://www.youtube.com/watch?v=YAT4y-kpRUM
    //      (or check the description)
    // ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    var next_level = getLevelKey(level_type, level_index+1);
    var next_level_locked = level_states[? next_level] == LEVEL_STATE.LOCKED;
    if(next_level_locked){
        level_states[? next_level] = LEVEL_STATE.UNPLAYED;
    }
}
