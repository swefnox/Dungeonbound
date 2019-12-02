///@func artefact_sprite(artefact)

switch(argument0)
{
	case Artefact.Gauntlet: return s_gauntlet;
	case Artefact.FireSword: return s_firesword;
	case Artefact.IceSword: return s_icesword;
	case Artefact.Wand: return s_wand;
	case Artefact.Rod: return s_rod;
	default: return noone;
}