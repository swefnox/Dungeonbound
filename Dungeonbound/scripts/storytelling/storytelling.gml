///@func storytelling(option)

var last_weapon = "";
switch(global.last_used_item)
{
	case Artefact.Gauntlet: last_weapon = "You punch the lich with the Gauntelt, knocking him out. As the weapon turns into dust, "; break;
	case Artefact.FireSword: last_weapon = "You swing the Fire Sword at the lich, knocking him out. As the blade turns into ash, "; break;
	case Artefact.IceSword: last_weapon = "You swing the Ice Sword at the lich, knocking him out. As the the blade shatters into pieces, "; break;
	case Artefact.Wand: last_weapon = "You shot a lighting from the Wand at the lich, knocking him out. As the artefact melts in your hands, "; break;
	case Artefact.Rod: last_weapon = "You shot a beam of light from the Rod at the lich, knocking him out. As the artefact evaporates from your hands, "; break;
	default: last_weapon = "You deliver the final blow at the lich, knocking him out. You take a deep breath and "; break;
}
last_weapon += "you're glad this fight is over.";

var weapons_left = 0;
if(global.artefacts[Artefact.Gauntlet] >= 2) weapons_left++;
if(global.artefacts[Artefact.FireSword] >= 2) weapons_left++;
if(global.artefacts[Artefact.IceSword] >= 2) weapons_left++;
if(global.artefacts[Artefact.Wand] >= 2) weapons_left++;
if(global.artefacts[Artefact.Rod] >= 2) weapons_left++;

if(global.ending == 1 && weapons_left <= 0)
{
	global.ending = 2;
}

switch(argument0)
{
	case 0:
		return "Ah, Adventurers! Warriors, mages, rouges, clerics... Such brave souls, facing dangers and exploring dungeons!";
	case 1:
		return "And you... You're so glad you can help out your friends in their daring adventures. As a adventurer-in-training.";
	case 2:
		return "Of course you don't rush into the danger as they do. But, hopefully, one day your time will come.";
	case 3:
		return "Another adventure! Your friends venture bravely into another dungeon. As usualy, you wait for their return at the entrance.";
	case 4:
		return "What's that? Oh, no! Your friends have been captured by the evil lich that resides in this dungeon and thrown into the dungeon's dungeon!";
	case 5:
		return "You have to save them! Gladly your friends managed to clear the floor and even drew a map for you. How handy!";
	case 6:
		return "Apparently there are some artefacts left in the dungeon. They seem cursed and fragile, but should be powerful enough to get your friends out.";
	case 7:
		return "Without any further thinking you rush into the dungeon to save your dungeonbound friends!";
	case 201:
		if(global.ending >= 1) return last_weapon;
		else return "You prepare yourself to counter the lich's spell. A moment of bright light and you black out.";
	case 202:
		if(global.ending == 1) return "You turn to the cage and use and artefact to free your friend. Hurray! On your way out your companions congratualate you on your fight. Now you're an adventurer as well!";
		else if(global.ending == 2) return "You turn to the cage to free your friends... just to notice you have no artefacts left. You turn back and go through the dungeon once again.";
		else return "Oh no... you've got captured as well. The lich has bested you as well. Well, at least you're with your friends.";
	case 203:
		return "Press [Enter] to continue.";
	default: return "[TEXT]";
}