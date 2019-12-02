/// @description Ensuring the room is propertly positioned and presented

if(grid != noone)
{
	x = grid.x + grid.grid_step * grid_x;
	y = grid.y + grid.grid_step * grid_y;
}

if(blocked)
{
	if(blocked_time < 100) ++blocked_time; //limit on counting time
}
else
{
	blocked_time = 0;
}

if(blocked_time > 0) //partial fading of the room
{
	if(blocked_time > 60)
	{
		visible = false;
		image_alpha = 1.0;
	}
	else
	{
		image_alpha = 1 - blocked_time/60.0;
	}
}

//let's orient the tile properly
var left = !is_room_from(grid, grid_x, grid_y, DIR_LEFT);
var up = !is_room_from(grid, grid_x, grid_y, DIR_UP);
var right = !is_room_from(grid, grid_x, grid_y, DIR_RIGHT);
var down = !is_room_from(grid, grid_x, grid_y, DIR_DOWN);

image_index = sprite_dir_index_bool(right, up, left, down);