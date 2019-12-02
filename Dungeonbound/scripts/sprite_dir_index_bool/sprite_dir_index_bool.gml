///@func sprite_dir_index(right, up, left, down)

var right = argument0;
var up = argument1;
var left = argument2;
var down = argument3;

//turns the boolean result into a sum - makes it easier to group the results
var dirs = 0;
if(right) ++dirs;
if(up) ++dirs;
if(left) ++dirs;
if(down) ++dirs;

if(dirs == 0) return 0;
if(dirs == 1)
{
	if(right) return 1;
	if(up) return 2;
	if(left) return 3;
	/*if(down)*/ return 4;
}
if(dirs == 2)
{
	if(right && up) return 5;
	if(up && left) return 6;
	if(left && down) return 7;
	if(down && right) return 8;
	if(right && left) return 9;
	return 10;
}
if(dirs == 3)
{
	if(!left) return 11;
	if(!down) return 12;
	if(!right) return 13;
	/*if(down)*/ return 14;
}

return 15;