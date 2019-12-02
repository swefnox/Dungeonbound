/// @description Just setting up the animation

image_speed = 0;

alarm_set(0, 60);

// start up at the point 0

var opts = choose_option(story_state, text_output);
for(var i = array_length_1d(opts) - 1; i >= 0; --i)
{
	//show_debug_message(string(i));
	with(grid)
	{
		var field = grid_get_field(0, i);
		if(field != noone)
		{
			field.option = opts[i];
		}
	}
}