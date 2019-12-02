/// @description Insert description here
// You can write your code in this editor

with(o_map)
{
	other.grid = id;
}

with(grid)
{
	var field = grid_get_field(other.grid_x, other.grid_y);
	var L = array_length_1d(field.attached);
	field.attached[L] = other.id;
}