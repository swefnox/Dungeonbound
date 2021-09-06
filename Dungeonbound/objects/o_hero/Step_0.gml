/// @description Process hero on the point and the inputs

//let's read input

var in_direction = DIR_NONE;

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
	
	if(in_direction != DIR_NONE) faces = in_direction;
}
//show_debug_message([dx, dy, in_direction]);

var use_default_frame = true;

switch(state)
{
	case PlayerState.Busy:
		var player_field = noone;
		with(grid)
		{
			player_field = grid_get_field(other.grid_x, other.grid_y);
		}
		//process the field
		if(player_field != noone)
		{
			process_field(player_field, id);
		}
		
		//check if the movement is blocked out
		var up = is_passage_from(grid, grid_x, grid_y, DIR_UP);
		var left = is_passage_from(grid, grid_x, grid_y, DIR_LEFT);
		var right = is_passage_from(grid, grid_x, grid_y, DIR_RIGHT);
		var down = is_passage_from(grid, grid_x, grid_y, DIR_DOWN);
		
		if(!(up || left || right || down)) //no way to move
		{
			blocked_out = true;
			with(o_proceeder)
			{
				enabled = true;
				timedout = true;
				alarm_set(0, 60);
			}
		}
		
		//done processing - the movement is available once again
		state = PlayerState.Idle;
		state_timer = 0;
		break;
	case PlayerState.Idle:
		if(in_direction != DIR_NONE)
		{
			if(is_passage_from(grid, grid_x, grid_y, in_direction))
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
				frame_i = 0;
				frame_t = 0;
				
				with(grid)
				{
					grid_process(other);
				}
				with(screenplay)
				{
					screenplay_on_successful_move();
				}
			}
		}
		break;
	case PlayerState.Moving:
		use_default_frame = false;
		break;
}

if(state_timer < 1000) ++state_timer;

if(use_default_frame)
{
	image_index = sprite_dir_index(faces);
}
else
{
	var set = dir_anim_frames[faces];
	//show_debug_message(set);
	image_index = set[frame_i % array_length_1d(set)];
	if(++frame_t >= 2)
	{
		++frame_i;
		frame_t = 0;
	}
	
	//show_debug_message([image_index, frame_t, frame_i, array_length_1d(set)]);
}