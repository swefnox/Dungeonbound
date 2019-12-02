/// @description Drawing the text contents

if(use_alt_colour)
	draw_set_colour(colour_alt);
else
	draw_set_colour(colour_main);

draw_text_ext(x, y, text, -1, width)