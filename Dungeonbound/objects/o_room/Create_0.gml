/// @description Attaching the room to the grid

with(o_map)
{
	other.grid = id;
}

if(inactive)
{
	visible = false;
	blocked = true;
	blocked_time = 100;
	exit;
}

image_speed = 0;

add_grid_room(grid, grid_x, grid_y, id);