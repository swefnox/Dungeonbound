/// @description Pick Up!

if(type >= 0 && type < Artefact._AMOUNT)
{
	if(global.artefacts[type] <= ArtefactState.NotCollected)
	{
		global.artefacts[type] = ArtefactState.Collected;
	}
}