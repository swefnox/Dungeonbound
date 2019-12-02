///@func next_option(current_option, caller)
//returns if the button should time out

var caller = argument1;

switch(argument0)
{
	case 0:
	case 1:
	case 2:
	case 3:
	case 4:
	case 5:
	case 6:
	case 201:
	case 202:
		caller.option = argument0 + 1;
		return true;
	case 7:
		room_goto(r_menu);
		return false;
		break;
	case 100:
		room_goto(r_adventure);
		return false;
		break;
	case 200:
		room_goto(r_finale);
		return false;
		break;
	case 203:
		if(global.ending == 2) room_goto(choose(r_dungeon_v1, r_dungeon_v2,r_dungeon_v3,r_dungeon_v4,r_dungeon_v5,r_dungeon_v6));
		else room_goto(r_menu);
		return false;
		break;
	default:
		break;
}