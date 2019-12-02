///@func check_keyboard_cmd(direction/command)

if(gamepad_is_connected(0))
{
	var deadzone = 0.5;
	var ax = gamepad_axis_value(0, gp_axislh);
	var ay = gamepad_axis_value(0, gp_axislv);
	
	//show_debug_message([ax, ay]);
	
	if(abs(ay) < deadzone) ay = 0;
	if(abs(ax) < deadzone) ax = 0;
	
	if(abs(ay) > abs(ax)) ax = 0;
	else ay = 0;
	
	var btn_a = gamepad_button_check(0, gp_face1);
	var btn_b = gamepad_button_check(0, gp_face2);
	var btn_x = gamepad_button_check(0, gp_face3);
	var btn_y = gamepad_button_check(0, gp_face4);
	
	switch(argument0)
	{
		case DIR_RIGHT:
			return ax > 0 || gamepad_button_check(0, gp_padr);
		case DIR_UP:
			return ay < 0 || gamepad_button_check(0, gp_padu);
		case DIR_LEFT:
			return ax < 0 || gamepad_button_check(0, gp_padl);
		case DIR_DOWN:
			return ay > 0 || gamepad_button_check(0, gp_padd);
		case CMD_OK:
			return  btn_a || btn_b || btn_x || btn_y;
		default:
			return false;
	}
}