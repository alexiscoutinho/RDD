//-----------------------------------------------------
Msg("RealismDeathsDoor\n");

DirectorOptions <-
{
	ActiveChallenge = 1

	weaponsToConvert =
	{
		weapon_first_aid_kit = "weapon_pain_pills_spawn"
		weapon_adrenaline = "weapon_pain_pills_spawn"
	}

	function ConvertWeaponSpawn( classname )
	{
		if ( classname in weaponsToConvert )
		{
			return weaponsToConvert[classname];
		}
		return 0;
	}	
	
	DefaultItems =
	[
		"pistol",
		"pistol",
	]

	function GetDefaultItem( idx )
	{
		if ( idx < DefaultItems.len() )
		{
			return DefaultItems[idx];
		}
		return 0;
	}	

	// Challenge vars
	cm_AllowPillConversion = 0
	cm_ShouldHurry = 1
	cm_AllowSurvivorRescue = 0
	SurvivorMaxIncapacitatedCount = 0
	
}

function Update()
{
	DirectorOptions.RecalculateHealthDecay();
}