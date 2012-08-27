/* USMC Loadout */

if (!isServer || local player) then {		
	if (side player == WEST) then {
		/* Magazines. */
		_m = ["30Rnd_556x45_Stanag"];
		_m set [count _m,"30Rnd_556x45_StanagSD"];
		_m set [count _m,"20Rnd_556x45_Stanag"];
		//_m set [count _m,"30Rnd_556x45_G36"];
		//_m set [count _m,"30Rnd_556x45_G36SD"];
		//_m set [count _m,"100Rnd_556x45_BetaCMag"]; // Markus - Removed BetaC mags
		_m set [count _m,"5Rnd_762x51_M24"];
		_m set [count _m,"20Rnd_762x51_DMR"];
		_m set [count _m,"10Rnd_127x99_m107"];
		_m set [count _m,"100Rnd_762x51_M240"];
		_m set [count _m,"200Rnd_556x45_M249"];
		_m set [count _m,"30Rnd_9x19_MP5"];
		_m set [count _m,"30Rnd_9x19_MP5SD"];
		_m set [count _m,"8Rnd_B_Beneli_74Slug"];
		_m set [count _m,"M136"];
		_m set [count _m,"SMAW_HEAA"];
		_m set [count _m,"SMAW_HEDP"];
		_m set [count _m,"Javelin"];
		_m set [count _m,"Stinger"];
		_m set [count _m,"Laserbatteries"];
		_m set [count _m,"15Rnd_9x19_M9"];
		_m set [count _m,"15Rnd_9x19_M9SD"];
		_m set [count _m,"7Rnd_45ACP_1911"];

		WF_Logic setVariable ['magazineClasses',_m];

		/* Primary. */
		_w = ['M16A2'];
		_w set [count _w,'M16A2GL'];
		_w set [count _w,'m16a4'];
		_w set [count _w,'m16a4_acg'];
		_w set [count _w,'M16A4_GL'];
		_w set [count _w,'M16A4_ACG_GL'];
		_w set [count _w,'M24'];
		_w set [count _w,'M40A3'];
		_w set [count _w,'M240'];
		_w set [count _w,'Mk_48'];
		_w set [count _w,'M249'];
		_w set [count _w,'M4A1'];
		_w set [count _w,'M4A1_Aim'];
		_w set [count _w,'M4A1_Aim_camo'];
		_w set [count _w,'M4SPR'];
		_w set [count _w,'M4A1_RCO_GL'];
		_w set [count _w,'M4A1_AIM_SD_camo'];
		_w set [count _w,'M4A1_HWS_GL_SD_Camo'];
		_w set [count _w,'M4A1_HWS_GL'];
		_w set [count _w,'M4A1_HWS_GL_camo'];
		_w set [count _w,'MP5SD'];
		_w set [count _w,'MP5A5'];
		_w set [count _w,'G36C'];
		_w set [count _w,'G36_C_SD_eotech'];
		_w set [count _w,'G36a'];
		_w set [count _w,'G36K'];
		_w set [count _w,'MG36'];
		_w set [count _w,'DMR'];
		_w set [count _w,'M1014'];
		_w set [count _w,'m107'];
		_w set [count _w,'m8_carbine'];
		_w set [count _w,'m8_carbineGL'];
		_w set [count _w,'m8_compact'];
		_w set [count _w,'m8_sharpshooter'];
		_w set [count _w,'m8_SAW'];

		WF_Logic setVariable ['primaryClasses',_w];

		/* Secondary. */
		_w = ['M136'];
		_w set [count _w,'SMAW'];
		_w set [count _w,'Javelin'];
		_w set [count _w,'Stinger'];
		_w set [count _w,'Laserdesignator'];

		WF_Logic setVariable ['secondaryClasses',_w];

		/* Sidearms. */
		_w = ['Colt1911'];
		_w set [count _w,'M9'];
		_w set [count _w,'M9SD'];

		WF_Logic setVariable ['sidearmClasses',_w];

		/* Misc. */
		_w = ['HandGrenade_West'];
		_w set [count _w,'HandGrenade_Stone'];
		_w set [count _w,'SmokeShell'];
		_w set [count _w,'SmokeShellRed'];
		_w set [count _w,'SmokeShellGreen'];
		_w set [count _w,'SmokeShellBlue'];
		_w set [count _w,'SmokeShellYellow'];
		_w set [count _w,'SmokeShellOrange'];
		_w set [count _w,'SmokeShellPurple'];
		_w set [count _w,'FlareWhite_M203'];
		_w set [count _w,'FlareYellow_M203'];
		_w set [count _w,'FlareGreen_M203'];
		_w set [count _w,'FlareRed_M203'];
		_w set [count _w,'1Rnd_HE_M203'];
		_w set [count _w,'1Rnd_Smoke_M203'];
		_w set [count _w,'1Rnd_SmokeRed_M203'];
		_w set [count _w,'1Rnd_SmokeGreen_M203'];
		_w set [count _w,'1Rnd_SmokeYellow_M203'];
		_w set [count _w,'Mine'];
		_w set [count _w,'PipeBomb'];
		_w set [count _w,'Binocular'];
		_w set [count _w,'NVGoggles'];
		_w set [count _w,'ItemCompass'];
		_w set [count _w,'ItemGPS'];
		_w set [count _w,'ItemMap'];
		_w set [count _w,'ItemRadio'];
		_w set [count _w,'ItemWatch'];

		WF_Logic setVariable ['miscClasses',_w];

		//--- Templates.
		_items = ['ItemCompass','ItemGPS','ItemMap','ItemRadio','ItemWatch'];

		_d = [getText(configFile >> 'CfgWeapons' >> 'm16a4' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'Colt1911' >> 'displayName')];
		_p = [getText(configFile >> 'CfgWeapons' >> 'm16a4' >> 'picture')];
		_t = [['m16a4','Colt1911']];
		_m = [['30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag',
			'HandGrenade_West','HandGrenade_West','SmokeShellBlue','SmokeShellBlue','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911',
			'7Rnd_45ACP_1911','7Rnd_45ACP_1911']];
		_s = [['Binocular']];
		_i = [_items];
		_l = [0];
		_b = [true];

		_d set [count _d,getText(configFile >> 'CfgWeapons' >> 'M16A4_GL' >> 'displayName')];
		_p set [count _p,getText(configFile >> 'CfgWeapons' >> 'M16A4_GL' >> 'picture')];
		_t set [count _t,['M16A4_GL']];
		_m set [count _m,['30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag',
			'30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','HandGrenade_West','HandGrenade_West','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203',
			'1Rnd_HE_M203','1Rnd_HE_M203']];
		_s set [count _s,['Binocular']];
		_i set [count _i, _items];
		_l set [count _l,0];
		_b set [count _b,true];

		_d set [count _d,getText(configFile >> 'CfgWeapons' >> 'G36C' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'M136' >> 'displayName')];
		_p set [count _p,getText(configFile >> 'CfgWeapons' >> 'G36C' >> 'picture')];
		_t set [count _t,['G36C','M136']];
		_m set [count _m,['30Rnd_556x45_G36','30Rnd_556x45_G36','30Rnd_556x45_G36','30Rnd_556x45_G36','30Rnd_556x45_G36','30Rnd_556x45_G36','M136']];
		_s set [count _s,['Binocular']];
		_i set [count _i, _items];
		_l set [count _l,0];
		_b set [count _b,true];

		_d set [count _d,getText(configFile >> 'CfgWeapons' >> 'M4A1_HWS_GL_SD_Camo' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'SMAW' >> 'displayName')];
		_p set [count _p,getText(configFile >> 'CfgWeapons' >> 'M4A1_HWS_GL_SD_Camo' >> 'picture')];
		_t set [count _t,['M4A1_HWS_GL_SD_Camo','SMAW']];
		_m set [count _m,['30Rnd_556x45_StanagSD','30Rnd_556x45_StanagSD','30Rnd_556x45_StanagSD','30Rnd_556x45_StanagSD','30Rnd_556x45_StanagSD','30Rnd_556x45_StanagSD','SMAW_HEAA',
			'SMAW_HEAA','SMAW_HEDP','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203']];
		_s set [count _s,['Binocular','NVGoggles']];
		_i set [count _i, _items];
		_l set [count _l,3];
		_b set [count _b,false];

		_d set [count _d,getText(configFile >> 'CfgWeapons' >> 'm8_carbine' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'SMAW' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'M9' >> 'displayName')];
		_p set [count _p,getText(configFile >> 'CfgWeapons' >> 'm8_carbine' >> 'picture')];
		_t set [count _t,['m8_carbine','SMAW','M9']];
		_m set [count _m,['30Rnd_556x45_G36','30Rnd_556x45_G36','30Rnd_556x45_G36','30Rnd_556x45_G36','30Rnd_556x45_G36','30Rnd_556x45_G36','SMAW_HEAA','SMAW_HEAA','SMAW_HEDP',
			'15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9']];
		_s set [count _s,['Binocular','NVGoggles']];
		_i set [count _i, _items];
		_l set [count _l,2];
		_b set [count _b,false];

		_d set [count _d,getText(configFile >> 'CfgWeapons' >> 'M4A1_Aim' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'Javelin' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'Colt1911' >> 'displayName')];
		_p set [count _p,getText(configFile >> 'CfgWeapons' >> 'M4A1_Aim' >> 'picture')];
		_t set [count _t,['M4A1_Aim','Javelin','Colt1911']];
		_m set [count _m,['30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','Javelin',
			'7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911']];
		_s set [count _s,['Binocular','NVGoggles']];
		_i set [count _i, _items];
		_l set [count _l,3];
		_b set [count _b,false];

		_d set [count _d,getText(configFile >> 'CfgWeapons' >> 'M16A2' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'Stinger' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'M9' >> 'displayName')];
		_p set [count _p,getText(configFile >> 'CfgWeapons' >> 'M16A2' >> 'picture')];
		_t set [count _t,['M16A2','Stinger','M9']];
		_m set [count _m,['30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','Stinger',
			'15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9']];
		_s set [count _s,['Binocular','NVGoggles']];
		_i set [count _i, _items];
		_l set [count _l,2];
		_b set [count _b,false];

		_d set [count _d,getText(configFile >> 'CfgWeapons' >> 'M1014' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'M9' >> 'displayName') + '/' + getText(configFile >> 'CfgMagazines' >> 'Mine' >> 'displayName')];
		_p set [count _p,getText(configFile >> 'CfgWeapons' >> 'M1014' >> 'picture')];
		_t set [count _t,['M1014','M9']];
		_m set [count _m,['8Rnd_B_Beneli_74Slug','8Rnd_B_Beneli_74Slug','8Rnd_B_Beneli_74Slug','8Rnd_B_Beneli_74Slug','8Rnd_B_Beneli_74Slug','8Rnd_B_Beneli_74Slug','Mine','Mine','Mine',
			'15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9']];
		_s set [count _s,['Binocular']];
		_i set [count _i, _items];
		_l set [count _l,0];
		_b set [count _b,true];

		_d set [count _d,getText(configFile >> 'CfgWeapons' >> 'MP5SD' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'M9SD' >> 'displayName') + '/' + getText(configFile >> 'CfgMagazines' >> 'PipeBomb' >> 'displayName')];
		_p set [count _p,getText(configFile >> 'CfgWeapons' >> 'MP5SD' >> 'picture')];
		_t set [count _t,['MP5SD','M9SD']];
		_m set [count _m,['30Rnd_9x19_MP5SD','30Rnd_9x19_MP5SD','30Rnd_9x19_MP5SD','30Rnd_9x19_MP5SD','30Rnd_9x19_MP5SD','30Rnd_9x19_MP5SD','PipeBomb','PipeBomb','PipeBomb',
			'15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD']];
		_s set [count _s,['Binocular','NVGoggles']];
		_i set [count _i, _items];
		_l set [count _l,1];
		_b set [count _b,true];

		_d set [count _d,getText(configFile >> 'CfgWeapons' >> 'M240' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'Colt1911' >> 'displayName')];
		_p set [count _p,getText(configFile >> 'CfgWeapons' >> 'M240' >> 'picture')];
		_t set [count _t,['M240','Colt1911']];
		_m set [count _m,['100Rnd_762x51_M240','100Rnd_762x51_M240','100Rnd_762x51_M240','100Rnd_762x51_M240','100Rnd_762x51_M240','SmokeShellRed','SmokeShellRed','7Rnd_45ACP_1911',
			'7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911']];
		_s set [count _s,['Binocular']];
		_i set [count _i, _items];
		_l set [count _l,0];
		_b set [count _b,true];

		_d set [count _d,getText(configFile >> 'CfgWeapons' >> 'M249' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'Colt1911' >> 'displayName')];
		_p set [count _p,getText(configFile >> 'CfgWeapons' >> 'M249' >> 'picture')];
		_t set [count _t,['M249','Colt1911']];
		_m set [count _m,['200Rnd_556x45_M249','200Rnd_556x45_M249','200Rnd_556x45_M249','200Rnd_556x45_M249','200Rnd_556x45_M249','SmokeShellRed','SmokeShellRed','7Rnd_45ACP_1911',
			'7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911']];
		_s set [count _s,['Binocular','NVGoggles']];
		_i set [count _i, _items];
		_l set [count _l,2];
		_b set [count _b,true];

		_d set [count _d,getText(configFile >> 'CfgWeapons' >> 'DMR' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'M9SD' >> 'displayName')];
		_p set [count _p,getText(configFile >> 'CfgWeapons' >> 'DMR' >> 'picture')];
		_t set [count _t,['DMR','M9SD']];
		_m set [count _m,['20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR',
			'20Rnd_762x51_DMR','20Rnd_762x51_DMR','HandGrenade_West','HandGrenade_West','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD',
			'15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD']];
		_s set [count _s,['Binocular','NVGoggles']];
		_i set [count _i, _items];
		_l set [count _l,2];
		_b set [count _b,false];

		_d set [count _d,getText(configFile >> 'CfgWeapons' >> 'M40A3' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'Laserdesignator' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'M9SD' >> 'displayName')];
		_p set [count _p,getText(configFile >> 'CfgWeapons' >> 'M40A3' >> 'picture')];
		_t set [count _t,['M40A3','Laserdesignator','M9SD']];
		_m set [count _m,['5Rnd_762x51_M24','5Rnd_762x51_M24','5Rnd_762x51_M24','5Rnd_762x51_M24','5Rnd_762x51_M24','5Rnd_762x51_M24','5Rnd_762x51_M24','5Rnd_762x51_M24',
			'5Rnd_762x51_M24','5Rnd_762x51_M24','HandGrenade_West','Laserbatteries','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD',
			'15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD']];
		_s set [count _s,['Binocular','NVGoggles']];
		_i set [count _i, _items];
		_l set [count _l,2];
		_b set [count _b,false];

		_d set [count _d,getText(configFile >> 'CfgWeapons' >> 'm107' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'M9SD' >> 'displayName')];
		_p set [count _p,getText(configFile >> 'CfgWeapons' >> 'm107' >> 'picture')];
		_t set [count _t,['m107','M9SD']];
		_m set [count _m,['10Rnd_127x99_m107','10Rnd_127x99_m107','10Rnd_127x99_m107','10Rnd_127x99_m107','10Rnd_127x99_m107','10Rnd_127x99_m107','10Rnd_127x99_m107','10Rnd_127x99_m107',
			'10Rnd_127x99_m107','10Rnd_127x99_m107','HandGrenade_West','HandGrenade_West','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD',
			'15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD']];
		_s set [count _s,['Binocular','NVGoggles']];
		_i set [count _i, _items];
		_l set [count _l,3];
		_b set [count _b,false];

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

['WFBE_WESTDEFAULTWEAPONS',['SCAR_L_STD_HOLO','ItemCompass','ItemMap','ItemWatch','ItemRadio'],true] Call SetNamespace;
['WFBE_WESTDEFAULTAMMO',['30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','HandGrenade_West','HandGrenade_West'],true] Call SetNamespace;

//--- AI Leaders Loadouts.
if (isServer) then {
	//--- No Upgrade.
	['WFBE_WESTLEADERWEAPONS01',['m16a4','M136','Colt1911','Binocular','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_WESTLEADERAMMO01',['30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','M136','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911'],true] Call SetNamespace;
	['WFBE_WESTLEADERWEAPONS02',['G36C','M136','Colt1911','Binocular','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_WESTLEADERAMMO02',['30Rnd_556x45_G36','30Rnd_556x45_G36','30Rnd_556x45_G36','30Rnd_556x45_G36','30Rnd_556x45_G36','30Rnd_556x45_G36','M136','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911'],true] Call SetNamespace;
	['WFBE_WESTLEADERWEAPONS03',['M240','Colt1911','Binocular','ItemRadio','ItemMap'],true] Call SetNamespace;;
	['WFBE_WESTLEADERAMMO03',['100Rnd_762x51_M240','100Rnd_762x51_M240','100Rnd_762x51_M240','100Rnd_762x51_M240','100Rnd_762x51_M240','HandGrenade_West','HandGrenade_West','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911'],true] Call SetNamespace;
	//--- Upgrade 1.
	['WFBE_WESTLEADERWEAPONS11',['m16a4_acg','M136','Colt1911','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_WESTLEADERAMMO11',['30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','M136','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911'],true] Call SetNamespace;
	['WFBE_WESTLEADERWEAPONS12',['G36K','M136','Colt1911','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_WESTLEADERAMMO12',['30Rnd_556x45_G36','30Rnd_556x45_G36','30Rnd_556x45_G36','30Rnd_556x45_G36','30Rnd_556x45_G36','30Rnd_556x45_G36','M136','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911'],true] Call SetNamespace;
	['WFBE_WESTLEADERWEAPONS13',['M4SPR','M9SD','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_WESTLEADERAMMO13',['20Rnd_556x45_Stanag','20Rnd_556x45_Stanag','20Rnd_556x45_Stanag','20Rnd_556x45_Stanag','20Rnd_556x45_Stanag','20Rnd_556x45_Stanag','20Rnd_556x45_Stanag','20Rnd_556x45_Stanag','20Rnd_556x45_Stanag','20Rnd_556x45_Stanag','HandGrenade_West','HandGrenade_West','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD'],true] Call SetNamespace;
	//--- Upgrade 2.
	['WFBE_WESTLEADERWEAPONS21',['M4A1_Aim_camo','SMAW','Colt1911','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_WESTLEADERAMMO21',['30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','SMAW_HEAA','SMAW_HEAA','SMAW_HEDP','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911'],true] Call SetNamespace;
	['WFBE_WESTLEADERWEAPONS22',['m8_carbine','SMAW','Colt1911','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_WESTLEADERAMMO22',['30Rnd_556x45_G36','30Rnd_556x45_G36','30Rnd_556x45_G36','30Rnd_556x45_G36','30Rnd_556x45_G36','30Rnd_556x45_G36','SMAW_HEAA','SMAW_HEAA','SMAW_HEDP','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911'],true] Call SetNamespace;
	['WFBE_WESTLEADERWEAPONS23',['MG36','Colt1911','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_WESTLEADERAMMO23',['100Rnd_556x45_BetaCMag','100Rnd_556x45_BetaCMag','100Rnd_556x45_BetaCMag','100Rnd_556x45_BetaCMag','100Rnd_556x45_BetaCMag','HandGrenade_West','HandGrenade_West','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911'],true] Call SetNamespace;
	//--- Upgrade 3.
	['WFBE_WESTLEADERWEAPONS31',['M4A1_HWS_GL','SMAW','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_WESTLEADERAMMO31',['30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','SMAW_HEAA','SMAW_HEAA','SMAW_HEDP','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203'],true] Call SetNamespace;
	['WFBE_WESTLEADERWEAPONS32',['m8_compact','Javelin','Colt1911','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_WESTLEADERAMMO32',['30Rnd_556x45_G36','30Rnd_556x45_G36','30Rnd_556x45_G36','30Rnd_556x45_G36','30Rnd_556x45_G36','30Rnd_556x45_G36','Javelin','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911'],true] Call SetNamespace;
	['WFBE_WESTLEADERWEAPONS33',['Mk_48','Colt1911','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_WESTLEADERAMMO33',['100Rnd_762x51_M240','100Rnd_762x51_M240','100Rnd_762x51_M240','100Rnd_762x51_M240','100Rnd_762x51_M240','HandGrenade_West','HandGrenade_West','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911'],true] Call SetNamespace;
};