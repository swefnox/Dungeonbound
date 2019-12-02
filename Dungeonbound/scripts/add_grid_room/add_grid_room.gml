///@func add_grid_room(grid_object, x, y, room_object)

with(argument0)
{
	grid[argument1, argument2] = argument3;
	++reported_fields;
}
with(argument3)
{
	grid = argument0;
}