with(oLevelControl){
    level_scores[? "NORMAL_"+string(level_index)] = max(
        level_scores[? "NORMAL_"+string(level_index)],
        instance_number(oBarrel)
    )
    beat_levels[? "NORMAL_"+string(level_index)] = true;
}
