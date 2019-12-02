///@func reset_inventory()

for(var i = Artefact._AMOUNT - 1; i >= 0; --i)
	global.artefacts[i] = ArtefactState.NotCollected;