randomise();

#macro DIR_NONE -1

#macro DIR_RIGHT 0
#macro DIR_UP 1
#macro DIR_LEFT 2
#macro DIR_DOWN 3

#macro CMD_OK 4

enum PlayerState
{
	Idle,
	Moving,
	Busy
}

enum GridMode
{
	Idle,
	Blocking
}

enum Artefact
{
	Gauntlet, //blocks jumping
	FireSword, //blocks hearing (muffles the dialogues XD)
	IceSword, //blocks running (but you can still walk)
	Wand, //blocks standing still
	Rod, //blocks sight (hides artefacts)
	_AMOUNT //also indicates unknown artefact
}

enum ArtefactState
{
	NotCollected = 0,
	Used = 1, //but the curse is still active, test for cure using >0
	Collected = 2 //test by >1
}

global.artefacts = array_create(Artefact._AMOUNT, ArtefactState.NotCollected); //player's inventory
/*global.artefacts[Artefact.Gauntlet] = ArtefactState.Collected;
global.artefacts[Artefact.FireSword] = ArtefactState.Collected;
global.artefacts[Artefact.IceSword] = ArtefactState.Collected;
global.artefacts[Artefact.Wand] = ArtefactState.Collected;
global.artefacts[Artefact.Rod] = ArtefactState.Collected;*/
global.lich_phys_def = 1;
global.lich_mag_def = 1;
global.lich_extra_dmg = 0;
global.ending = 0;
global.last_used_item = Artefact._AMOUNT;

draw_set_colour(c_white);
//draw_set_font(global.font1);
draw_set_font(font0);