/// @description Visibility and reaction

if(enabled)
{
	visible = true;
	if(!timedout)
	{
		var enter = check_keybaord_cmd(CMD_OK) || check_joystick_cmd(CMD_OK);
		if(enter)
		{
			var do_timeout = next_option(option, id);
			if(do_timeout)
			{
				timedout = true;
				alarm_set(0, 30);
			}
		}
	}
}
else
{
	visible = false;
}