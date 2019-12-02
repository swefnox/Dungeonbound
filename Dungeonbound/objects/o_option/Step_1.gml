/// @description Ensuring the option is propertly positioned and presented

if(grid != noone)
{
	x = grid.x + grid.grid_step * grid_x + dx;
	y = grid.y + grid.grid_step * grid_y + dy;
}

if(textfield != noone)
{
	textfield.x = x + text_dx;
	textfield.y = y + text_dy;
}

if(option < 0)
{
	textfield.text = "[no option available]";
	textfield.use_alt_colour = true;
	available = false;
	image_blend = c_gray;
}
else
{
	//show_debug_message([global.artefacts[Artefact.FireSword], global.artefacts[Artefact.Rod]]);
	var unblocked = true;
	if(0 <= blocked_by && blocked_by < Artefact._AMOUNT)
	{
		if(global.artefacts[blocked_by] > 0) //you have the curse
		{
			textfield.text = option_blocked_text(blocked_by);
			textfield.use_alt_colour = true;
			available = false;
			unblocked = false;
		}
	}
	if(0 <= allowed_by && allowed_by < Artefact._AMOUNT && unblocked)
	{
		if(global.artefacts[allowed_by] < 2) //you don't have the artefact
		{
			textfield.text = option_required_text(allowed_by);
			textfield.use_alt_colour = true;
			available = false;
			unblocked = false;
		}
	}
	if(unblocked)
	{
		textfield.text = option_text(option);
		textfield.use_alt_colour = false;
		available = true;
		image_blend = -1;
	}
	else image_blend = c_gray;
}