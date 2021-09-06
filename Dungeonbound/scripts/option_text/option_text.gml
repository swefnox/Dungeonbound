///@func option_text(option)

var deaf = global.artefacts[Artefact.FireSword] > 0; //curse of deafness
var blind = global.artefacts[Artefact.Rod] > 0; //curse of blidness

switch(argument0)
{
	case 1001: return "Start";
	case 1002: return "Exit";
	
	case 1: return "Walk to the lich and slap him in the face.";
	case 2: return "Pounce at the lich at once!";
	case 3: return "Try to listen to his incantation to find an opportunity to attack.";
	case 4: return "Charge at the lich!";
	case 5: return "Pick up a stone that's at your feet and throw it at the lich.";
	case 6: return "Observe the lich and try to find an opening in his defence.";
	case 7: return "Punch the lich with the Mighty Gauntlet.";
	case 8: return "Swing the Fire Sword at the lich.";
	case 9: return "Hit the lich with the Ice Sword.";
	case 10: return "Shot a lighting at the lich from the Wand.";
	case 11: return "Fire a beam of light at the lich from the Radiant Rod.";
	
	case 12: return "Kick the lich in between his legs.";
	case 13: return "Jump at the lich.";
	case 14: return "Listen carefully to the incantation to find an good moment to attack.";
	case 15: return "Run around the lich and push on him the large candlestick that's behind him.";
	case 16: return "Throw a stone at the candlestick behind the lich, making it fall on him.";
	case 17: return "Start staring at the lich... perhaps that will distract him.";
	case 18: return "Punch the lich with the Mighty Gauntlet.";
	case 19: return "Swing the Fire Sword at the lich.";
	case 20: return "Hit the lich with the Ice Sword.";
	case 21: return "Shot a lighting at the lich from the Wand.";
	case 22: return "Fire a beam of light at the lich from the Radiant Rod.";
	
	case 23: return "Hit the lich in his face!";
	case 24: return "Throw yourself at the lich, pinning him to the ground.";
	case 25: return "Listen in when the desperate undead is the most distracted and strike!";
	case 26: return "Charge at the lich!";
	case 27: return "Wait for a moment, get a second wind and punch the lich!";
	case 28: return "Watch when the lich is losing his stance and then strike!";
	case 29: return "Punch the lich with the Mighty Gauntlet.";
	case 30: return "Swing the Fire Sword at the lich.";
	case 31: return "Hit the lich with the Ice Sword.";
	case 32: return "Shot a lighting at the lich from the Wand.";
	case 33: return "Fire a beam of light at the lich from the Radiant Rod.";
	
	case 34: return "Hit the lich in his face!";
	case 35: return "Throw yourself at the lich, pinning him to the ground.";
	case 36: return "Listen in when the desperate undead is the most distracted and strike!";
	case 37: return "Charge at the lich!";
	case 38: return "Wait for a moment, get a second wind and punch the lich!";
	case 39: return "Watch when the lich is losing his stance and then strike!";
	case 40: return "Punch the lich with the Mighty Gauntlet.";
	case 41: return "Swing the Fire Sword at the lich.";
	case 42: return "Hit the lich with the Ice Sword.";
	case 43: return "Shot a lighting at the lich from the Wand.";
	case 44: return "Fire a beam of light at the lich from the Radiant Rod.";
	
	case 45: return "Cover your face with your hands.";
	case 46: return "Try to jump to the side before the spell hits you.";
	case 47: return "Try to listen to the incanction, planning your next move.";
	case 48: return "Run around the lich.";
	case 49: return "Stand still and watch.";
	case 50: return "Observe and look for an opportunity...";
	case 51: return "Block the spell with the Mighty Gauntlet!";
	case 52: return "Parry the spell with the Fire Sword.";
	case 53: return "Parry the spell with the Ice Sword.";
	case 54: return "Counter the spell with a lightning from the Wand!";
	case 55: return "Counter the spell with a beam from the Radiant Rod!";
	
	case -1:
	default: return "[no option available]";
}