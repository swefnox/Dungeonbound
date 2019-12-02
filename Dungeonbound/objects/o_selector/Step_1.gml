/// @description Basic positioning of the hero on the map
switch(state)
{
	case PlayerState.Moving:
		var coeff = clamp(state_timer/15, 0, 1);
		with(grid)
		{
			var x0 = x + grid_step * other.previous_x + other.grid_dx;
			var y0 = y + grid_step * other.previous_y + other.grid_dy;
			var x1 = x + grid_step * other.grid_x + other.grid_dx;
			var y1 = y + grid_step * other.grid_y + other.grid_dy;
			
			other.x = x0 + coeff * (x1 - x0);
			other.y = y0 + coeff * (y1 - y0);
		}
		
		if(coeff >= 1)
		{
			state = PlayerState.Idle;
			state_timer = 0;
		}
		break;
	case PlayerState.Idle:
	case PlayerState.Busy:
	default:
		with(grid)
		{
			other.x = x + grid_step * other.grid_x + other.grid_dx;
			other.y = y + grid_step * other.grid_y + other.grid_dy;
		}
		break;
}