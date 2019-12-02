///@func sprite_dir_index(directions...)

var right = false;
var up = false;
var left = false;
var down = false;

for(var i = argument_count - 1; i >= 0; --i)
{
	if(argument[i] == DIR_LEFT) left = true;
	if(argument[i] == DIR_UP) up = true;
	if(argument[i] == DIR_RIGHT) right = true;
	if(argument[i] == DIR_DOWN) down = true;
}

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
}

return 0;