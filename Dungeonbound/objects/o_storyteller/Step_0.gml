/// @description updating everything

if(observe != noone)
{
	var opt = observe.option;
	
	image_index = story_image(opt);
	
	if(textfield != noone)
	{
		textfield.text = storytelling(opt);
	}
}