/// @description Registering the option

add_grid_room(grid, grid_x, grid_y, id);

textfield = instance_create_layer(x + text_dx, y + text_dy, "options", o_textfield);
textfield.width = 960;

if(0 <= allowed_by && allowed_by < Artefact._AMOUNT)
{
	sprite_index = artefact_sprite(allowed_by);
}