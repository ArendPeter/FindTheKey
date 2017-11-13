var target_level = argument0;
var target_type = argument1;

with(oLevelControl){
    return level_states[? getLevelKey(target_type, target_level) ];
}
