/// @description Process hero on the point and the inputs

//let's read input

var in_direction = DIR_NONE;
var enter = false;

if(controlable)
{
	var dx = 0;
	var dy = 0;
	if(check_keybaord_cmd(DIR_RIGHT) || check_joystick_cmd(DIR_RIGHT)) dx += 1;
	if(check_keybaord_cmd(DIR_LEFT) || check_joystick_cmd(DIR_LEFT)) dx -= 1;
	if(check_keybaord_cmd(DIR_UP) || check_joystick_cmd(DIR_UP)) dy += 1;
	if(check_keybaord_cmd(DIR_DOWN) || check_joystick_cmd(DIR_DOWN)) dy -= 1;

	if(dy > 0) in_direction = DIR_UP;
	else if(dy < 0) in_direction = DIR_DOWN;
	if(dx > 0) in_direction = DIR_RIGHT;
	else if(dx < 0) in_direction = DIR_LEFT;
	
	enter = check_keybaord_cmd(CMD_OK) || check_joystick_cmd(CMD_OK);
}
//show_debug_message([dx, dy, in_direction]);

switch(state)
{
	case PlayerState.Busy:
		if(state_timer > 60)
		{
			state = PlayerState.Idle;
			state_timer = 0;
		}
		break;
	case PlayerState.Idle:
		if(enter)
		{
			var player_field = noone;
			with(grid)
			{
				player_field = grid_get_field(other.grid_x, other.grid_y);
			}
			if(player_field != noone)
			{
				if(player_field.available)
				{
					//progress the story
					story_state = player_field.option;
					var opts = choose_option(story_state, text_output);
					if(player_field.allowed_by >= 0 && player_field.allowed_by < Artefact._AMOUNT)
					{
						global.artefacts[player_field.allowed_by] = ArtefactState.Used;
					}
					for(var i = array_length_1d(opts) - 1; i >= 0; --i)
					{
						with(grid)
						{
							var field = grid_get_field(0, i);
							if(field != noone)
							{
								field.option = opts[i];
							}
						}
					}
					state_timer = 0;
					state = PlayerState.Busy;
				}
			}
		}
		else if(in_direction != DIR_NONE)
		{
			if(is_room_from(grid, grid_x, grid_y, in_direction))
			{
				previous_x = grid_x;
				previous_y = grid_y;
				switch(in_direction)
				{
					case DIR_RIGHT: ++grid_x; break;
					case DIR_UP: --grid_y; break;
					case DIR_LEFT: --grid_x; break;
					case DIR_DOWN: ++grid_y; break;
				}
				state = PlayerState.Moving;
				state_timer = 0;
			}
		}
		break;
	case PlayerState.Moving:
		break;
}

if(state_timer < 1000) ++state_timer;