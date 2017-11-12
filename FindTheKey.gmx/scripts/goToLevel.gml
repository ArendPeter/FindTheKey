var target_level = argument0;

with(oLevelControl){
    level_index = target_level;
    room_goto(levels[? "NORMAL_"+string(target_level)]);
}
