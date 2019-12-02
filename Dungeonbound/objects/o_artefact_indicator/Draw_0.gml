/// @description Insert description here
// You can write your code in this editor

if(0 <= type && type < Artefact._AMOUNT)
{
	if(global.artefacts[type] > 1) //it's collected
	{
		draw_self();
		if(extra_sprite != noone)
		{
			draw_sprite(extra_sprite, 0, x + extra_dx, y + extra_dy);
		}
	}
	else if(global.artefacts[type] == ArtefactState.Used)
	{
		if(extra_sprite != noone)
		{
			draw_sprite(extra_sprite, 1, x + extra_dx, y + extra_dy);
		}
	}
}