///@func array_2d_create(width, height, [value])

var value = 0;
if(argument_count >= 2) value = argument[2];

var array = 0;

for(var i = argument[0]-1; i >= 0; --i)
	for(var j = argument[1]-1; j >= 0; --j)
		array[i, j] = value;

return array;