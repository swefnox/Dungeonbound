///@func story_image(option)

switch(argument0)
{
	case 0: return 2;
	case 1: return 3;
	case 2: return 3;
	case 3: return 4;
	case 4: return 5;
	case 5: return 5;
	case 6: return 5;
	case 7: return 6;
	case 201: return 1;
	case 202:
	case 203:
		if(global.ending == 1) return 9;
		if(global.ending == 2) return 8;
		return 7;
	default: return 0;
}