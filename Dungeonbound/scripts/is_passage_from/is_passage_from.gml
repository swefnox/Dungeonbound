///@func is_passage_from(grid, x, y, direction)

var target_x = argument1;
var target_y = argument2;

switch(argument3)
{
	case DIR_DOWN: target_y += 1; break;
	case DIR_LEFT: target_x -= 1; break;
	case DIR_UP: target_y -= 1; break;
	case DIR_RIGHT: target_x += 1; break;
}

if(0 <= target_x && target_x < argument0.grid_width
	&& 0 <= target_y && target_y < argument0.grid_height)
{
	if(argument0.grid[target_x, target_y] != noone)
	{
		return !argument0.grid[target_x, target_y].blocked;
	}
}

return false;