//@func grid_process(player)

var player = argument0;

if(mode == GridMode.Idle) return;

if(mode == GridMode.Blocking)
{
	var line = DIR_NONE; //tells from which direction we should block
	var same_X = player.previous_x == player.grid_x;
	var same_Y = player.previous_y == player.grid_y;
	
	if(same_X && same_Y) //remove random line
	{
		line = choose(DIR_UP, DIR_DOWN, DIR_LEFT, DIR_RIGHT);
		//show_debug_message("random");
	}
	else
	{
		var horizontal = false; //same_Y
		if(!same_X && !same_Y) //complete mismatch
		{
			horizontal = choose(true, false);
		}
		else if(same_X) //it can't be together now with same_Y, so a horizontal movement
		{
			horizontal = true; //i.e. same_X && !same_Y
		}
		//we have horizontal as false and same_Y is the only remaining option, so it's implied here
		//so we have !same_X && same_Y already covered
		
		if(horizontal)
		{
			line = (player.previous_y < player.grid_y) ? DIR_UP : DIR_DOWN;
		}
		else
		{
			line = (player.previous_x < player.grid_x) ? DIR_LEFT : DIR_RIGHT;
		}
	}
	
	//show_debug_message(string(line));
	
	if(line != DIR_NONE) //let's block the proper line (find first not fully blocked)
	{
		if(line == DIR_RIGHT || line == DIR_LEFT)
		{
			var c = -1;
			for(var i = grid_width-1; i >= 0 ; --i)
			{
				var column = (line == DIR_RIGHT) ? i : (grid_width - 1 - i);
				var column_blocked = grid_unblocked_in_line(false, column);
				if(column_blocked > 0) //done searching
				{
					c = column;
					//show_debug_message(["column", column, column_blocked]);
					break;
				}
			}
			
			if(c >= 0)
			{
				for(var i = grid_height-1; i >= 0; --i)
				{
					var field = grid_get_field(c, i);
					if(field != noone && !(player.grid_x == column && player.grid_y == i))
						field.blocked = true;
				}
			}
		}
		else
		{
			var r = -1;
			for(var i = grid_height-1; i >= 0 ; --i)
			{
				var row = (line == DIR_DOWN) ? i : (grid_height - 1 - i);
				var row_blocked = grid_unblocked_in_line(true, row);
				if(row_blocked > 0) //done searching
				{
					r = row;
					//show_debug_message(["row", row, row_blocked]);
					break;
				}
			}
			
			if(r >= 0)
			{
				for(var i = grid_width-1; i >= 0; --i)
				{
					var field = grid_get_field(i, row);
					if(field != noone && !(player.grid_x == i && player.grid_y == row))
						field.blocked = true;
				}
			}
		}
	}
}