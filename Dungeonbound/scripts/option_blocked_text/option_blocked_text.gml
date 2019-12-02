///@func option_blocked_text(artefact)

switch(argument0)
{
	case Artefact.Gauntlet: return "(you can't jump)";
	case Artefact.FireSword: return "(you can't hear)";
	case Artefact.IceSword: return "(you can't run)";
	case Artefact.Wand: return "(you can't stand still)";
	case Artefact.Rod: return "(you can't see)";
	default: return "(reasons)";
}