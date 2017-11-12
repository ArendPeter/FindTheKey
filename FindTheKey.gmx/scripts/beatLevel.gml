with(oLevelControl){
    level_scores[level_index] = max(
        level_scores[level_index],
        instance_number(oBarrel)
    )
    beat_levels[level_index] = true;
}
