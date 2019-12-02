///@func grid_get_field(x, y)

if(argument0 < 0) return noone;
if(argument0 >= grid_width) return noone;
if(argument1 < 0) return noone;
if(argument1 >= grid_height) return noone;

return grid[argument0, argument1];