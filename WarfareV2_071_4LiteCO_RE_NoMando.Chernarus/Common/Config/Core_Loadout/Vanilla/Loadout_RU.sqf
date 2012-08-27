/* RU Loadout */

if (!isServer || local player) then {
	if (side player == EAST) then {
		/* Magazines. */
		_m = ["30Rnd_762x39_AK47"];
		_m set [count _m, "30Rnd_545x39_AK"];
		_m set [count _m, "30Rnd_545x39_AKSD"];
		_m set [count _m, "64Rnd_9x19_Bizon"];
		_m set [count _m, "64Rnd_9x19_SD_Bizon"];
		_m set [count _m, "100Rnd_762x54_PK"];
		_m set [count _m, "75Rnd_545x39_RPK"];
		_m set [count _m, "5x_22_LR_17_HMR"];
		_m set [count _m, "10Rnd_762x54_SVD"];
		_m set [count _m, "8Rnd_B_Saiga12_74Slug"];
		_m set [count _m, "5Rnd_127x108_KSVK"];
		_m set [count _m, "10Rnd_9x39_SP5_VSS"];
		_m set [count _m, "20Rnd_9x39_SP5_VSS"];
		_m set [count _m, "PG7V"];
		_m set [count _m, "PG7VL"];
		_m set [count _m, "OG7"];
		_m set [count _m, "PG7VR"];
		_m set [count _m, "RPG18"];
		_m set [count _m, "AT13"];
		_m set [count _m, "Igla"];
		_m set [count _m, "Strela"];
		_m set [count _m, "Laserbatteries"];
		_m set [count _m, "8Rnd_9x18_Makarov"];
		_m set [count _m, "8Rnd_9x18_MakarovSD"];

		WF_Logic setVariable ['magazineClasses',_m];

		/* Primary. */
		_w = ['AK_47_M'];
		_w set [count _w, 'AK_47_S'];
		_w set [count _w, 'AK_74'];
		_w set [count _w, 'AK_74_GL'];
		_w set [count _w, 'AK_107_kobra'];
		_w set [count _w, 'AK_107_GL_kobra'];
		_w set [count _w, 'AK_107_pso'];
		_w set [count _w, 'AK_107_GL_pso'];
		_w set [count _w, 'AKS_74_kobra'];
		_w set [count _w, 'AKS_74_pso'];
		_w set [count _w, 'AKS_74_u'];
		_w set [count _w, 'AKS_74_uN_kobra'];
		_w set [count _w, 'AKS_GOLD'];
		_w set [count _w, 'bizon'];
		_w set [count _w, 'bizon_silenced'];
		_w set [count _w, 'PK'];
		_w set [count _w, 'Pecheneg'];
		_w set [count _w, 'RPK_74'];
		_w set [count _w, 'huntingrifle'];
		_w set [count _w, 'SVD'];
		_w set [count _w, 'SVD_CAMO'];
		_w set [count _w, 'Saiga12K'];
		_w set [count _w, 'ksvk'];
		_w set [count _w, 'VSS_vintorez'];

		WF_Logic setVariable ['primaryClasses',_w];

		/* Secondary. */
		_w = ['RPG7V'];
		_w set [count _w, 'RPG18'];
		_w set [count _w, 'MetisLauncher'];
		_w set [count _w, 'Igla'];
		_w set [count _w, 'Strela'];
		_w set [count _w, 'Laserdesignator'];

		WF_Logic setVariable ['secondaryClasses',_w];

		/* Sidearms. */
		_w = ['Makarov'];
		_w set [count _w, 'MakarovSD'];

		WF_Logic setVariable ['sidearmClasses',_w];

		/* Misc. */
		_w = ['HandGrenade_East'];
		_w set [count _w, 'HandGrenade_Stone'];
		_w set [count _w, 'SmokeShell'];
		_w set [count _w, 'SmokeShellRed'];
		_w set [count _w, 'SmokeShellGreen'];
		_w set [count _w, 'SmokeShellBlue'];
		_w set [count _w, 'SmokeShellYellow'];
		_w set [count _w, 'SmokeShellOrange'];
		_w set [count _w, 'SmokeShellPurple'];
		_w set [count _w, 'FlareWhite_GP25'];
		_w set [count _w, 'FlareYellow_GP25'];
		_w set [count _w, 'FlareGreen_GP25'];
		_w set [count _w, 'FlareRed_GP25'];
		_w set [count _w, '1Rnd_HE_GP25'];
		_w set [count _w, '1Rnd_SMOKE_GP25'];
		_w set [count _w, '1Rnd_SMOKERED_GP25'];
		_w set [count _w, '1Rnd_SMOKEGREEN_GP25'];
		_w set [count _w, '1Rnd_SMOKEYELLOW_GP25'];
		_w set [count _w, 'MineE'];
		_w set [count _w, 'PipeBomb'];
		_w set [count _w, 'Binocular'];
		_w set [count _w, 'NVGoggles'];
		_w set [count _w, 'ItemCompass'];
		_w set [count _w, 'ItemGPS'];
		_w set [count _w, 'ItemMap'];
		_w set [count _w, 'ItemRadio'];
		_w set [count _w, 'ItemWatch'];

		WF_Logic setVariable ['miscClasses',_w];

		//--- Templates.
		_items = ['ItemCompass','ItemGPS','ItemMap','ItemRadio','ItemWatch'];

		_d = [getText(configFile >> 'CfgWeapons' >> 'AK_107_kobra' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'Makarov' >> 'displayName')];
		_p = [getText(configFile >> 'CfgWeapons' >> 'AK_107_kobra' >> 'picture')];
		_t = [['AK_107_kobra','Makarov']];
		_m = [['30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK',
			'HandGrenade_East','HandGrenade_East','SmokeShellBlue','SmokeShellBlue','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov',
			'8Rnd_9x18_Makarov','8Rnd_9x18_Makarov']];
		_s = [['Binocular']];
		_i = [_items];
		_l = [0];
		_b = [true];

		_d set [count _d, getText(configFile >> 'CfgWeapons' >> 'AK_107_GL_kobra' >> 'displayName')];
		_p set [count _p, getText(configFile >> 'CfgWeapons' >> 'AK_107_GL_kobra' >> 'picture')];
		_t set [count _t, ['AK_107_GL_kobra']];
		_m set [count _m, ['30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK',
			'30Rnd_545x39_AK','30Rnd_545x39_AK','HandGrenade_East','HandGrenade_East','1Rnd_HE_GP25','1Rnd_HE_GP25','1Rnd_HE_GP25','1Rnd_HE_GP25','1Rnd_HE_GP25','1Rnd_HE_GP25',
			'1Rnd_HE_GP25','1Rnd_HE_GP25']];
		_s set [count _s, ['Binocular']];
		_i set [count _i, _items];
		_l set [count _l, 0];
		_b set [count _b, true];

		_d set [count _d, getText(configFile >> 'CfgWeapons' >> 'AK_107_pso' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'RPG7V' >> 'displayName')];
		_p set [count _p, getText(configFile >> 'CfgWeapons' >> 'AK_107_pso' >> 'picture')];
		_t set [count _t, ['AK_107_pso','RPG7V']];
		_m set [count _m, ['30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','PG7V','PG7V','PG7V']];
		_s set [count _s, ['Binocular','NVGoggles']];
		_i set [count _i, _items];
		_l set [count _l, 1];
		_b set [count _b, false];

		_d set [count _d, getText(configFile >> 'CfgWeapons' >> 'AK_107_GL_pso' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'RPG7V' >> 'displayName')];
		_p set [count _p, getText(configFile >> 'CfgWeapons' >> 'AK_107_GL_pso' >> 'picture')];
		_t set [count _t, ['AK_107_GL_pso','RPG7V']];
		_m set [count _m, ['30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','PG7V',
			'PG7V','PG7V','1Rnd_HE_GP25','1Rnd_HE_GP25','1Rnd_HE_GP25','1Rnd_HE_GP25','1Rnd_HE_GP25','1Rnd_HE_GP25','1Rnd_HE_GP25','1Rnd_HE_GP25']];
		_s set [count _s, ['Binocular','NVGoggles']];
		_i set [count _i, _items];
		_l set [count _l, 1];
		_b set [count _b, false];

		_d set [count _d, getText(configFile >> 'CfgWeapons' >> 'AKS_74_u' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'RPG7V' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'Makarov' >> 'displayName')];
		_p set [count _p, getText(configFile >> 'CfgWeapons' >> 'AKS_74_u' >> 'picture')];
		_t set [count _t, ['AKS_74_u','RPG7V','Makarov']];
		_m set [count _m, ['30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','PG7V','PG7V','PG7V',
			'8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov']];
		_s set [count _s, ['Binocular','NVGoggles']];
		_i set [count _i, _items];
		_l set [count _l, 1];
		_b set [count _b, true];

		_d set [count _d, getText(configFile >> 'CfgWeapons' >> 'AK_107_kobra' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'MetisLauncher' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'Makarov' >> 'displayName')];
		_p set [count _p, getText(configFile >> 'CfgWeapons' >> 'AK_107_kobra' >> 'picture')];
		_t set [count _t, ['AK_107_kobra','MetisLauncher','Makarov']];
		_m set [count _m, ['30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','AT13',
			'8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov']];
		_s set [count _s, ['Binocular','NVGoggles']];
		_i set [count _i, _items];
		_l set [count _l, 3];
		_b set [count _b, false];

		_d set [count _d, getText(configFile >> 'CfgWeapons' >> 'AK_74' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'Igla' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'Makarov' >> 'displayName')];
		_p set [count _p, getText(configFile >> 'CfgWeapons' >> 'AK_74' >> 'picture')];
		_t set [count _t, ['AK_74','Igla','Makarov']];
		_m set [count _m, ['30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','Igla',
			'8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov']];
		_s set [count _s, ['Binocular','NVGoggles']];
		_i set [count _i, _items];
		_l set [count _l, 2];
		_b set [count _b, false];

		_d set [count _d, getText(configFile >> 'CfgWeapons' >> 'Saiga12K' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'Makarov' >> 'displayName') + '/' + getText(configFile >> 'CfgMagazines' >> 'MineE' >> 'displayName')];
		_p set [count _p, getText(configFile >> 'CfgWeapons' >> 'Saiga12K' >> 'picture')];
		_t set [count _t, ['Saiga12K','Makarov']];
		_m set [count _m, ['8Rnd_B_Saiga12_74Slug','8Rnd_B_Saiga12_74Slug','8Rnd_B_Saiga12_74Slug','8Rnd_B_Saiga12_74Slug','8Rnd_B_Saiga12_74Slug','8Rnd_B_Saiga12_74Slug','MineE','MineE','MineE',
			'8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov']];
		_s set [count _s, ['Binocular']];
		_i set [count _i, _items];
		_l set [count _l, 0];
		_b set [count _b, true];

		_d set [count _d, getText(configFile >> 'CfgWeapons' >> 'AKS_74_uN_kobra' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'MakarovSD' >> 'displayName') + '/' + getText(configFile >> 'CfgMagazines' >> 'PipeBomb' >> 'displayName')];
		_p set [count _p, getText(configFile >> 'CfgWeapons' >> 'AKS_74_uN_kobra' >> 'picture')];
		_t set [count _t, ['AKS_74_uN_kobra','MakarovSD']];
		_m set [count _m, ['30Rnd_545x39_AKSD','30Rnd_545x39_AKSD','30Rnd_545x39_AKSD','30Rnd_545x39_AKSD','30Rnd_545x39_AKSD','30Rnd_545x39_AKSD','PipeBomb','PipeBomb','PipeBomb',
			'8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD']];
		_s set [count _s, ['Binocular','NVGoggles']];
		_i set [count _i, _items];
		_l set [count _l, 2];
		_b set [count _b, true];

		_d set [count _d, getText(configFile >> 'CfgWeapons' >> 'PK' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'Makarov' >> 'displayName')];
		_p set [count _p, getText(configFile >> 'CfgWeapons' >> 'PK' >> 'picture')];
		_t set [count _t, ['PK','Makarov']];
		_m set [count _m, ['100Rnd_762x54_PK','100Rnd_762x54_PK','100Rnd_762x54_PK','100Rnd_762x54_PK','100Rnd_762x54_PK','SmokeShellBlue','SmokeShellBlue','8Rnd_9x18_Makarov',
			'8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov']];
		_s set [count _s, ['Binocular']];
		_i set [count _i, _items];
		_l set [count _l, 0];
		_b set [count _b, true];

		_d set [count _d, getText(configFile >> 'CfgWeapons' >> 'Pecheneg' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'Makarov' >> 'displayName')];
		_p set [count _p, getText(configFile >> 'CfgWeapons' >> 'Pecheneg' >> 'picture')];
		_t set [count _t, ['Pecheneg','Makarov']];
		_m set [count _m, ['100Rnd_762x54_PK','100Rnd_762x54_PK','100Rnd_762x54_PK','100Rnd_762x54_PK','100Rnd_762x54_PK','SmokeShellBlue','SmokeShellBlue','8Rnd_9x18_Makarov',
			'8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov']];
		_s set [count _s, ['Binocular','NVGoggles']];
		_i set [count _i, _items];
		_l set [count _l, 2];
		_b set [count _b, false];

		_d set [count _d, getText(configFile >> 'CfgWeapons' >> 'SVD' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'MakarovSD' >> 'displayName')];
		_p set [count _p, getText(configFile >> 'CfgWeapons' >> 'SVD' >> 'picture')];
		_t set [count _t, ['SVD','MakarovSD']];
		_m set [count _m, ['10Rnd_762x54_SVD','10Rnd_762x54_SVD','10Rnd_762x54_SVD','10Rnd_762x54_SVD','10Rnd_762x54_SVD','10Rnd_762x54_SVD','10Rnd_762x54_SVD','10Rnd_762x54_SVD',
			'10Rnd_762x54_SVD','10Rnd_762x54_SVD','HandGrenade_East','HandGrenade_East','8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD',
			'8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD']];
		_s set [count _s, ['Binocular']];
		_i set [count _i, _items];
		_l set [count _l, 1];
		_b set [count _b, true];

		_d set [count _d, getText(configFile >> 'CfgWeapons' >> 'VSS_vintorez' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'Laserdesignator' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'MakarovSD' >> 'displayName')];
		_p set [count _p, getText(configFile >> 'CfgWeapons' >> 'VSS_vintorez' >> 'picture')];
		_t set [count _t, ['VSS_vintorez','Laserdesignator','MakarovSD']];
		_m set [count _m, ['20Rnd_9x39_SP5_VSS','20Rnd_9x39_SP5_VSS','20Rnd_9x39_SP5_VSS','20Rnd_9x39_SP5_VSS','20Rnd_9x39_SP5_VSS','20Rnd_9x39_SP5_VSS','20Rnd_9x39_SP5_VSS','20Rnd_9x39_SP5_VSS',
			'20Rnd_9x39_SP5_VSS','20Rnd_9x39_SP5_VSS','HandGrenade_East','Laserbatteries','8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD',
			'8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD']];
		_s set [count _s, ['Binocular','NVGoggles']];
		_i set [count _i, _items];
		_l set [count _l, 2];
		_b set [count _b, false];

		_d set [count _d, getText(configFile >> 'CfgWeapons' >> 'ksvk' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'MakarovSD' >> 'displayName')];
		_p set [count _p, getText(configFile >> 'CfgWeapons' >> 'ksvk' >> 'picture')];
		_t set [count _t, ['ksvk','MakarovSD']];
		_m set [count _m, ['5Rnd_127x108_KSVK','5Rnd_127x108_KSVK','5Rnd_127x108_KSVK','5Rnd_127x108_KSVK','5Rnd_127x108_KSVK','5Rnd_127x108_KSVK','5Rnd_127x108_KSVK','5Rnd_127x108_KSVK',
			'5Rnd_127x108_KSVK','5Rnd_127x108_KSVK','HandGrenade_East','HandGrenade_East','8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD',
			'8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD']];
		_s set [count _s, ['Binocular','NVGoggles']];
		_i set [count _i, _items];
		_l set [count _l, 3];
		_b set [count _b, false];

		_c = [];
		_totalTemplates = count _d;

		for [{_count = 0},{_count < _totalTemplates},{_count = _count + 1}] do {
			_cost = 0;
			{
				_get = (_x+"_W") Call GetNamespace;
				if (isNil '_get') then {
					_get = _x Call GetNamespace;
				};
				if !(isNil '_get') then {_cost = _cost + (_get select QUERYGEARCOST)};
			} forEach (_t select _count);
			
			{
				_get = _x Call GetNamespace;
				if !(isNil '_get') then {_cost = _cost + (_get select QUERYGEARCOST)};
			} forEach ((_m select _count) + (_s select _count) + (_i select _count));
			
			_c set [count _c, _cost];
		};
		WF_Logic setVariable ['templateClasses',_t];
		WF_Logic setVariable ['templateNames',_d];
		WF_Logic setVariable ['templateCosts',_c];
		WF_Logic setVariable ['templatePictures',_p];
		WF_Logic setVariable ['templateMags',_m];
		WF_Logic setVariable ['templateItems',_i];
		WF_Logic setVariable ['templateSpecs',_s];
		WF_Logic setVariable ['templateUpgrades',_l];
		WF_Logic setVariable ['templateAllowed',_b];
	};
};

['WFBE_EASTDEFAULTWEAPONS',['AK_74','ItemCompass','ItemMap','ItemWatch','ItemRadio'],true] Call SetNamespace;
['WFBE_EASTDEFAULTAMMO',['30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','HandGrenade_East','HandGrenade_East'],true] Call SetNamespace;

//--- AI Leaders Loadouts.
if (isServer) then {
	//--- No upgrades.
	['WFBE_EASTLEADERWEAPONS01',['AK_107_kobra','RPG18','Makarov','Binocular','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_EASTLEADERAMMO01',['30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','RPG18','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov'],true] Call SetNamespace;
	['WFBE_EASTLEADERWEAPONS02',['AKS_74_kobra','RPG18','Makarov','Binocular','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_EASTLEADERAMMO02',['30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','RPG18','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov'],true] Call SetNamespace;
	['WFBE_EASTLEADERWEAPONS03',['PK','Makarov','Binocular','ItemRadio','ItemMap'],true] Call SetNamespace;;
	['WFBE_EASTLEADERAMMO03',['100Rnd_762x54_PK','100Rnd_762x54_PK','100Rnd_762x54_PK','100Rnd_762x54_PK','100Rnd_762x54_PK','HandGrenade_East','HandGrenade_East','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov'],true] Call SetNamespace;
	//--- Upgrade 1.
	['WFBE_EASTLEADERWEAPONS11',['AK_107_pso','RPG7V','Makarov','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_EASTLEADERAMMO11',['30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','PG7V','PG7V','PG7VR','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov'],true] Call SetNamespace;
	['WFBE_EASTLEADERWEAPONS12',['RPK_74','RPG7V','Makarov','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_EASTLEADERAMMO12',['75Rnd_545x39_RPK','75Rnd_545x39_RPK','75Rnd_545x39_RPK','75Rnd_545x39_RPK','75Rnd_545x39_RPK','75Rnd_545x39_RPK','PG7V','PG7V','PG7VR','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov'],true] Call SetNamespace;
	['WFBE_EASTLEADERWEAPONS13',['SVD','MakarovSD','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_EASTLEADERAMMO13',['10Rnd_762x54_SVD','10Rnd_762x54_SVD','10Rnd_762x54_SVD','10Rnd_762x54_SVD','10Rnd_762x54_SVD','10Rnd_762x54_SVD','10Rnd_762x54_SVD','10Rnd_762x54_SVD','10Rnd_762x54_SVD','10Rnd_762x54_SVD','HandGrenade_East','HandGrenade_East','8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD','8Rnd_9x18_MakarovSD'],true] Call SetNamespace;
	//--- Upgrade 2.
	['WFBE_EASTLEADERWEAPONS21',['VSS_vintorez','RPG7V','Makarov','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_EASTLEADERAMMO21',['20Rnd_9x39_SP5_VSS','20Rnd_9x39_SP5_VSS','20Rnd_9x39_SP5_VSS','20Rnd_9x39_SP5_VSS','20Rnd_9x39_SP5_VSS','20Rnd_9x39_SP5_VSS','PG7V','PG7V','PG7V','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov'],true] Call SetNamespace;
	['WFBE_EASTLEADERWEAPONS22',['bizon','RPG7V','Makarov','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_EASTLEADERAMMO22',['64Rnd_9x19_Bizon','64Rnd_9x19_Bizon','64Rnd_9x19_Bizon','64Rnd_9x19_Bizon','64Rnd_9x19_Bizon','64Rnd_9x19_Bizon','PG7V','PG7V','PG7V','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov'],true] Call SetNamespace;
	['WFBE_EASTLEADERWEAPONS23',['Pecheneg','Makarov','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_EASTLEADERAMMO23',['100Rnd_762x54_PK','100Rnd_762x54_PK','100Rnd_762x54_PK','100Rnd_762x54_PK','100Rnd_762x54_PK','HandGrenade_East','HandGrenade_East','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov'],true] Call SetNamespace;
	//--- Upgrade 3.
	['WFBE_EASTLEADERWEAPONS31',['AK_107_GL_pso','RPG7V','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_EASTLEADERAMMO31',['30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','PG7V','PG7V','PG7V','1Rnd_HE_GP25','1Rnd_HE_GP25','1Rnd_HE_GP25','1Rnd_HE_GP25'],true] Call SetNamespace;
	['WFBE_EASTLEADERWEAPONS32',['AK_107_kobra','MetisLauncher','Makarov','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_EASTLEADERAMMO32',['30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','30Rnd_545x39_AK','AT13','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov'],true] Call SetNamespace;
	['WFBE_EASTLEADERWEAPONS33',['SVD_CAMO','Makarov','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_EASTLEADERAMMO33',['10Rnd_762x54_SVD','10Rnd_762x54_SVD','10Rnd_762x54_SVD','10Rnd_762x54_SVD','10Rnd_762x54_SVD','10Rnd_762x54_SVD','10Rnd_762x54_SVD','10Rnd_762x54_SVD','10Rnd_762x54_SVD','10Rnd_762x54_SVD','HandGrenade_East','HandGrenade_East','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov','8Rnd_9x18_Makarov'],true] Call SetNamespace;
};