var target_level = argument0;
var target_type = argument1;

with(oLevelControl){
    return level_states[? target_type + "_" + string(target_level) ];
}
