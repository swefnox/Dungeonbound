///@func grid_unblocked_in_line(horizontal, index)
var index = argument1;
var result = -1;

if(argument0)
{
	if(0 <= index && index < grid_height)
	{
		result = 0;
		for(var i = grid_width-1; i >= 0; --i)
		{
			var field = grid_get_field(i, index);
			if(field != noone)
			{
				if(!field.blocked) ++result;
			}
		}
	}
}
else
{
	if(0 <= index && index < grid_width)
	{
		result = 0;
		for(var i = grid_height-1; i >= 0; --i)
		{
			var field = grid_get_field(index, i);
			if(field != noone)
			{
				if(!field.blocked) ++result;
			}
		}
	}
}


return result;