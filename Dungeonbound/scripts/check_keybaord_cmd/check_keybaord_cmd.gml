///@func check_keyboard_cmd(direction/command)
switch(argument0)
{
	case DIR_RIGHT:
		return keyboard_check(vk_right) || keyboard_check(ord("D"));
	case DIR_UP:
		return keyboard_check(vk_up) || keyboard_check(ord("W"));
	case DIR_LEFT:
		return keyboard_check(vk_left) || keyboard_check(ord("A"));
	case DIR_DOWN:
		return keyboard_check(vk_down) || keyboard_check(ord("S"));
	case CMD_OK:
		return keyboard_check(vk_enter) || keyboard_check(vk_space);
	default:
		return false;
}