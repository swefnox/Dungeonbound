///@func option_blocked_text(artefact)

switch(argument0)
{
	case Artefact.Gauntlet:
		return (global.artefacts[Artefact.Gauntlet] < 1) ? "(you don't have the Mighty Gauntlet)" : "(you don't have the Mighty Gauntlet any more)";
	case Artefact.FireSword:
		return (global.artefacts[Artefact.FireSword] < 1) ? "(you don't have the Fire Sword)" : "(you don't have the Fire Sword any more)";
	case Artefact.IceSword:
		return (global.artefacts[Artefact.IceSword] < 1) ? "(you don't have the Ice Sword)" : "(you don't have the Ice Sword any more)";
	case Artefact.Wand:
		return (global.artefacts[Artefact.Wand] < 1) ? "(you don't have the Wand of Lightning)" : "(you don't have the Wand of Lightning any more)";
	case Artefact.Rod:
		return (global.artefacts[Artefact.Rod] < 1) ? "(you don't have the Radiant Rod)" : "(you don't have the Radiant Rod any more)";
	default: return "(you don't have the right artefact)";
}