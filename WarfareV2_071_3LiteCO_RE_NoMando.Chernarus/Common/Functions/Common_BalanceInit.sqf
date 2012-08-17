Private ["_unit"];
_unit = _this select 0;

switch (typeOf _unit) do {
	case "HMMWV_Avenger": {
		if (WF_A2_Vanilla) then {
			_unit removeWeapon "SidewinderLaucher_AH1Z";
			_unit removeWeapon "StingerLaucher";
			_unit addMagazine "2Rnd_Sidewinder_AH1Z";
			_unit addMagazine "2Rnd_Sidewinder_AH1Z";
			_unit addMagazine "2Rnd_Sidewinder_AH1Z";
			_unit addMagazine "2Rnd_Sidewinder_AH1Z";
			_unit addMagazine "2Rnd_Sidewinder_AH1Z";
			_unit addMagazine "2Rnd_Sidewinder_AH1Z";
			_unit addMagazine "2Rnd_Sidewinder_AH1Z";
			_unit addMagazine "2Rnd_Sidewinder_AH1Z";
			_unit addWeapon "SidewinderLaucher_AH1Z";
		};
	};
	case "M6_EP1": {
		_unit removeWeapon "StingerLaucher_4x";
		_unit addMagazine "8Rnd_9M311";
		_unit addWeapon "9M311Laucher";
	};
	case "Ka52": {
		_unit removeWeapon "AT9Launcher";
		_unit removeWeapon "VikhrLauncher";
		_unit addMagazine "4Rnd_AT9_Mi24P";
		_unit addMagazine "4Rnd_AT9_Mi24P";
		_unit addMagazine "4Rnd_AT9_Mi24P"; // Markus - Add 4 more AT9s to Ka-52
		_unit addweapon "AT9Launcher";
		//_unit addMagazine "4Rnd_R73"; // Markus - Remove AA from Helos.
		//_unit addweapon "R73Launcher";  
	};
	case "Ka52Black": {
		_unit removeWeapon "AT9Launcher";
		_unit removeWeapon "VikhrLauncher";
		_unit addMagazine "4Rnd_AT9_Mi24P";
		_unit addMagazine "4Rnd_AT9_Mi24P";
		_unit addMagazine "4Rnd_AT9_Mi24P"; // Markus - Add 4 more AT9s to Ka-52
		_unit addweapon "AT9Launcher";
		//_unit addMagazine "4Rnd_R73"; // Markus - Remove AA from Helos.
		//_unit addweapon "R73Launcher";  
	};
	// Markus - F35, AN-2, AH-1z balance
	case "An2_TK_EP1": {
			_unit addMagazine "500Rnd_TwinVickers";
			_unit addweapon "TwinVickers";
			_unit addMagazine "6Rnd_Grenade_Camel";
			_unit addweapon "CamelGrenades";
	};
	case "F35B": {
	//Remove GBUs and sidewinders
			_unit removeMagazine "2Rnd_GBU12";
			_unit removeWeapon "BombLauncherF35";
			_unit removeMagazine "2Rnd_Sidewinder_F35";
			_unit removeWeapon "SidewinderLaucher_F35";
			// Add Sidewinder mag, then weapon, to stop the reloadtime after spawning.
			_unit addMagazine "4Rnd_Sidewinder_AV8B";
			_unit addWeapon "SidewinderLaucher";
	};
	
	case "AH1Z": {
			_unit removeWeapon "SidewinderLaucher_AH1Z";
			_unit removeMagazine "2Rnd_Sidewinder_AH1Z";
	};
	/// Markus
};