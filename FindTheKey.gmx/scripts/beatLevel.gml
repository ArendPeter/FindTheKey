with(oLevelControl){
    level_scores[? level_type+"_"+string(level_index)] = max(
        level_scores[? level_type+"_"+string(level_index)],
        instance_number(oBarrel)
    )
    beat_levels[? level_type+"_"+string(level_index)] = true;
}
