/// @description Position update

if(type >= 0 && type < Artefact._AMOUNT)
{
	if(global.artefacts[Artefact.Rod] > 1) //rod is collected
	{
		visible = false;
	}
	else
	{
		visible = global.artefacts[type] <= ArtefactState.NotCollected;
	}
}

if(grid != noone)
{
	x = grid.x + grid.grid_step * grid_x;
	y = grid.y + grid.grid_step * grid_y;
	
	var field = noone;
	with(grid)
	{
		field = grid_get_field(other.grid_x, other.grid_y);
	}
	if(field == noone) visible = false;
	else
	{
		if(field.blocked)
		{
			if(field.blocked_time < 60)
				image_alpha = clamp(field.image_alpha * 2.0, 0, 1);
			else
				image_alpha = 0;
		}
	}
}