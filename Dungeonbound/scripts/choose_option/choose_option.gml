///@func choose_option(option/story_point, textfield);
//returns array of options and updates the given textfield

var story = "";

var deaf = global.artefacts[Artefact.FireSword] > 0;
var blind = global.artefacts[Artefact.Rod] > 0;

var options = array_create(11, -1);
var neutral = -1;
var cursed = array_create(5, -1);
var items = array_create(5, -1);
var dont_compose = false;


//show_debug_message([deaf, blind]);
//show_debug_message([global.artefacts[Artefact.FireSword], global.artefacts[Artefact.Rod]]);

switch(argument0)
{
	case 1000: //menu
		reset_inventory();
		options[0] = 1001;
		options[1] = 1002;
		dont_compose = true;
		break;
	case 1001: // menu -> start
		room_goto(choose(r_dungeon_v1, r_dungeon_v2,r_dungeon_v3,r_dungeon_v4,r_dungeon_v5,r_dungeon_v6));
		//room_goto(r_dungeon);
		break;
	case 1002: // menu -> exit
		game_end();
		break;
	case 0:
		if(blind && deaf)
		{
			story = "You feel you've been transported to a different room. There's some mumbling that sounds like your friends. Oh, they have to be here! You also hear mumbling og the lich, followed by his evil laughter. Then some deeper mumbling, as if the lich was incating a spell.";
		}
		else if(blind)
		{
			story = "You feel you've been transported to a different room. You can hear your friends shouting out of excitement to see you. Yes, you found them. But there's also the lich. At first he's tauning you, then he bursts into his evil laughter. Once he's done, you can hear him incating a spell.";
		}
		else if(deaf)
		{
			story = "You've been teleported into the deeper dungeon. Oh, you can see the cage with your friends in it! The lich is also here. He points at you, talking something as if he was taunting you. After comedically bursting into a silent laughter, he starts casting a spell.";
		}
		else
		{
			story = "You've been teleported into the deeper dungeon. Oh, joy! You can see the cage with your friends in it. They shout out of excitement when they see you! The lich is aslo here. At first he's tauning you, then he bursts into his evil laughter. Once he's done, he starts casting a spell.";
		}
		neutral = 1;
		cursed = [2, 3, 4, 5, 6];
		items = [7, 8, 9, 10, 11];
		break;
	case 1:
	case 2:
	case 3:
	case 4:
	case 5:
	case 6:
	case 7:
	case 8:
	case 9:
	case 10:
	case 11:
		switch(argument0)
		{
				case 1: story = "You slowly approach the lich and slap him in the face. He seems to be neither impacted by your action, nor amused. "; break;
				case 2: story = "You pounce at the lich. The undead, surprised by your sudden movement, tries to avoid it. While making a step back, he bumps into a wall behind him, hitting his head a bit. "; break;
				case 3: story = "You manage to recognise the words of the spell a bit. While you don't know how it would look like, you figure out the moment when the lich has to focus the most. You approach him and shove him into the wall behind him. "; break;
				case 4: story = "You charge at the lich. The undead, surprised by your sudden movement, tries to avoid it. While making a step back, he bumps into a wall behind him, hitting his head a bit. "; break;
				case 5: story = "You pick up a stone, you stand still for a moment... aim well and throw the stone at the lich. You hit him right in his head! "; break; 
				case 6: story = "Observing the lich's stance, you notice a moment when there's an opening in his defence. You quickly approach him and shove him into the wall behind him. "; break;
				case 7: story = "You approach the lich and punch him with the Mighty Gauntlet. As you hit him there's a small burst of energy. The Gauntlet turns into dust and the lich doesn't seem to be pleased. "; break;
				case 8: story = "You approach the lich and swing the Fire Sword at him. As you hit him there's a small burst of energy. The Sword dims and turns into ash. The lich doesn't seem to be pleased. "; break;
				case 9: story = "You approach the lich and stike him with the Ice Sword. As you hit him there's a small burst of energy. The Sword shatters into tiny pieces and the lich doesn't seem to be pleased. "; break;
				case 10: story = "Circling the lich, you aim the Wand of Lighting at the him and fire. As you hit him there's a small burst of energy. The Want turns melts in your hands and the lich doesn't seem to be pleased. "; break;
				case 11: story = "Circling the lich, you aim the Radiant Rod him and punch him and fire. As you hit him there's a small burst of energy. The Rod evaporates from your hand and the lich doesn't seem to be pleased. "; break;
		}
		if(argument0 > 0)
		{
			if(argument0 <= 6) global.lich_phys_def--;
			else global.lich_mag_def--;
		}
		story += "Your opponent despite your action seems to continue to incant the spell.";
		neutral = 12;
		cursed = [13, 14, 15, 16, 17];
		items = [18, 19, 20, 21, 22];
		break;
	case 12:
	case 13:
	case 14:
	case 15:
	case 16:
	case 17:
	case 18:
	case 19:
	case 20:
	case 21:
	case 22:
		switch(argument0)
		{
				case 12:
					if(global.lich_mag_def + global.lich_phys_def < 1)
					{
						story = "You kick the lich between his legs. While he seems to still standing and casting the spell, you can see by his face it hurt. ";
						global.lich_extra_dmg++;
					}
					else
					{
						story = "You kick the lich between his legs. He's stance doesn't change a bit and the only one hurt as a result of your action is you. Ouch! ";
					}
					break;
				case 13: story = "You jump at the lich, pushing him into a large candlestick behind him. The candlestick topples and hits the lich. "; break;
				case 14: story = "You listen carefully to the lich's incantation and spot the right moment when he has to focus the most. You push him into the larghe candlestick behind him and the object falls and hits the lich. "; break;
				case 15: story = "You run around the lich and push the candlestick at him. The action surprises the undead as the heavy object falls on him, hitting him. "; break;
				case 16: story = "You pick up a stone, you stand still for a moment and throw it at the large candlestick behind the lich, knocking it over at him. "; break; 
				case 17: story = "You stare at the lich and he, confused, starts staring back at you. Curious, he looks behind himself and you use that moment to rush at him and push him at the candlestick behind him.  "; break;
				case 18: story = "You approach the lich and punch him with the Mighty Gauntlet. As you hit him there's a small burst of energy. The Gauntlet turns into dust and the lich doesn't seem to be pleased. "; break;
				case 19: story = "You approach the lich and swing the Fire Sword at him. As you hit him there's a small burst of energy. The Sword dims and turns into ash. The lich doesn't seem to be pleased. "; break;
				case 20: story = "You approach the lich and stike him with the Ice Sword. As you hit him there's a small burst of energy. The Sword shatters into tiny pieces and the lich doesn't seem to be pleased. "; break;
				case 21: story = "Circling the lich, you aim the Wand of Lighting at the him and fire. As you hit him there's a small burst of energy. The Want turns melts in your hands and the lich doesn't seem to be pleased. "; break;
				case 22: story = "Circling the lich, you aim the Radiant Rod him and punch him and fire. As you hit him there's a small burst of energy. The Rod evaporates from your hand and the lich doesn't seem to be pleased. "; break;
		}
		if(argument0 > 12)
		{
			if(argument0 <= 6) global.lich_phys_def--;
			else global.lich_mag_def--;
		}
		if(global.lich_mag_def <= 0 && global.lich_phys_def <= 0)
		{
			story += "Your opponent seems to be losing his strength. It feels like you are one strike from beating him.";
			neutral = 23;
			cursed = [24, 25, 26, 27, 28];
			items = [29, 30, 31, 32, 33];
		}
		else if((global.lich_mag_def <= 0 || global.lich_phys_def <= 0) && global.lich_extra_dmg > 0)
		{
			story += "Your opponent seems to be a bit weakened. Perhaps if you choose your next move wisely, you should be able to defeat him.";
			neutral = 34;
			cursed = [35, 36, 37, 38, 39];
			items = [40, 41, 42, 43, 44];
		}
		else{
			story += "Your opponent keeps incating the spell. It feels like it's almost ready. Quick! How can you counter it?";
			neutral = 45;
			cursed = [46, 47, 48, 49, 50];
			items = [51, 52, 53, 54, 55];
		}
		break;
	case 23:
	case 24:
	case 25:
	case 26:
	case 27:
	case 28:
	case 29:
	case 30:
	case 31:
	case 32:
	case 33:
		switch(argument0)
		{
			case 23:
			case 24:
			case 25:
			case 26:
			case 27:
			case 28: global.last_used_item = Artefact._AMOUNT; break;
			case 29: global.last_used_item = Artefact.Gauntlet; break;
			case 30: global.last_used_item = Artefact.FireSword; break;
			case 31: global.last_used_item = Artefact.IceSword; break;
			case 32: global.last_used_item = Artefact.Wand; break;
			case 33: global.last_used_item = Artefact.Rod; break;
		}
		global.ending = 1; //victory!
		room_goto(r_finale);
		break;
	case 34:
		global.last_used_item = Artefact._AMOUNT; break;
		global.ending = 0; //lose...
		room_goto(r_finale);
		break;
	case 35:
	case 36:
	case 37:
	case 38:
	case 39:
	case 40:
	case 41:
	case 42:
	case 43:
	case 44:
		switch(argument0)
		{
			case 35:
			case 36:
			case 37:
			case 38:
			case 39: global.last_used_item = Artefact._AMOUNT; break;
			case 40: global.last_used_item = Artefact.Gauntlet; break;
			case 41: global.last_used_item = Artefact.FireSword; break;
			case 42: global.last_used_item = Artefact.IceSword; break;
			case 43: global.last_used_item = Artefact.Wand; break;
			case 44: global.last_used_item = Artefact.Rod; break;
		}
		if(global.lich_mag_def <= 0 && global.lich_phys_def <= 0)
		{
			global.ending = 1; //victory!
		}
		else
		{
			global.ending = 0; //lose...
		}
		room_goto(r_finale);
		break;
	case 45:
	case 46:
	case 47:
	case 48:
	case 49:
	case 50:
	case 51:
	case 52:
	case 53:
	case 54:
	case 55:
		global.last_used_item = Artefact._AMOUNT; //it doesn't really matter in this case
		global.ending = 0; //lose...
		room_goto(r_finale);
		break;
	default:
		story = "[No story option here.]";
		break;
}

if(argument1 != noone)
{
	argument1.text = story;
}

if(!dont_compose)
{
	options[0] = neutral;
	for(var i = 4; i >= 0; --i)
	{
		options[i + 1] = cursed[i];
		options[i + 6] = items[i];
	}
}

return options;