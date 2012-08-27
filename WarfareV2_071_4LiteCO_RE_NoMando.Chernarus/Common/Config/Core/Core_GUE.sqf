/* GUE Configuration */
Private ['_c','_get','_i','_p','_z'];

_c = [];
_i = [];

/* Infantry */
_c set [count _c, 'GUE_Soldier_1'];
_i set [count _i, ['','',150,4,-1,0,0,0.55,'Guerilla',[]]];

_c set [count _c, 'GUE_Soldier_2'];
_i set [count _i, ['','',120,4,-1,0,0,0.55,'Guerilla',[]]];

_c set [count _c, 'GUE_Soldier_3'];
_i set [count _i, ['','',140,4,-1,0,0,0.55,'Guerilla',[]]];

_c set [count _c, 'GUE_Soldier_GL'];
_i set [count _i, ['','',150,5,-1,1,0,0.55,'Guerilla',[]]];

_c set [count _c, 'GUE_Soldier_AT'];
_i set [count _i, ['','',220,5,-1,1,0,0.58,'Guerilla',[]]];

_c set [count _c, 'GUE_Soldier_AA'];
_i set [count _i, ['','',250,4,-1,0,0,0.59,'Guerilla',[]]];

_c set [count _c, 'GUE_Soldier_AR'];
_i set [count _i, ['','',150,4,-1,1,0,0.54,'Guerilla',[]]];

_c set [count _c, 'GUE_Soldier_MG'];
_i set [count _i, ['','',190,4,-1,0,0,0.53,'Guerilla',[]]];

_c set [count _c, 'GUE_Soldier_Sniper'];
_i set [count _i, ['','',175,6,-1,1,0,0.62,'Guerilla',[]]];

_c set [count _c, 'GUE_Soldier_Medic'];
_i set [count _i, ['','',160,6,-1,0,0,0.59,'Guerilla',[]]];

_c set [count _c, 'GUE_Soldier_Crew'];
_i set [count _i, ['','',120,5,-1,0,0,0.51,'Guerilla',[]]];

_c set [count _c, 'GUE_Soldier_Pilot'];
_i set [count _i, ['','',120,5,-1,0,0,0.52,'Guerilla',[]]];

_c set [count _c, 'GUE_Soldier_Scout'];
_i set [count _i, ['','',260,5,-1,3,0,0.63,'Guerilla',[]]];

_c set [count _c, 'GUE_Soldier_Sab'];
_i set [count _i, ['','',220,5,-1,2,0,0.64,'Guerilla',[]]];

_c set [count _c, 'GUE_Commander'];
_i set [count _i, ['','',240,5,-1,0,0,0.65,'Guerilla',[]]];

_c set [count _c, 'GUE_Worker2'];
_i set [count _i, ['','',100,5,-1,0,0,0.41,'Guerilla',[]]];

_c set [count _c, 'GUE_Woodlander3'];
_i set [count _i, ['','',100,5,-1,0,0,0.41,'Guerilla',[]]];

_c set [count _c, 'GUE_Villager3'];
_i set [count _i, ['','',100,5,-1,0,0,0.41,'Guerilla',[]]];

_c set [count _c, 'GUE_Woodlander2'];
_i set [count _i, ['','',100,5,-1,0,0,0.41,'Guerilla',[]]];

_c set [count _c, 'GUE_Woodlander1'];
_i set [count _i, ['','',100,5,-1,0,0,0.41,'Guerilla',[]]];

_c set [count _c, 'GUE_Villager4'];
_i set [count _i, ['','',100,5,-1,0,0,0.41,'Guerilla',[]]];

/* Light Vehicles */
_c set [count _c, 'TT650_Gue'];
_i set [count _i, ['','',150,15,-2,0,1,0,'Guerilla',[]]];

_c set [count _c, 'V3S_Gue'];
_i set [count _i, ['','',175,15,-2,0,1,0,'Guerilla',[]]];

_c set [count _c, 'Pickup_PK_GUE'];
_i set [count _i, ['','',250,17,-2,0,1,0,'Guerilla',[]]];

_c set [count _c, 'Offroad_DSHKM_Gue'];
_i set [count _i, ['','',300,25,-2,1,1,0,'Guerilla',[]]];

_c set [count _c, 'Offroad_SPG9_Gue'];
_i set [count _i, ['','',380,20,-2,2,1,0,'Guerilla',[]]];

_c set [count _c, 'BRDM2_Gue'];
_i set [count _i, ['','',600,25,-2,2,1,0,'Guerilla',[]]];

_c set [count _c, 'Ural_ZU23_Gue'];
_i set [count _i, ['','',950,25,-2,3,1,0,'Guerilla',[]]];

/* Heavy Vehicles */
_c set [count _c, 'BMP2_Gue'];
_i set [count _i, ['','',2200,30,-2,0,2,0,'Guerilla',[]]];

_c set [count _c, 'T72_Gue'];
_i set [count _i, ['','',3200,35,-2,2,2,0,'Guerilla',[]]];

/* Static Defenses */
_c set [count _c, 'GUE_WarfareBMGNest_PK'];
_i set [count _i, ['','',300,0,1,0,'Defense',0,'Guerilla',[]]];

_c set [count _c, 'DSHKM_Gue'];
_i set [count _i, ['','',225,0,1,0,'Defense',0,'Guerilla',[]]];
// Markus - Removed SPG-9
//_c set [count _c, 'SPG9_Gue'];
//_i set [count _i, ['','',475,0,1,0,'Defense',0,'Guerilla',[]]];
/// Markus
_c set [count _c, 'ZU23_Gue'];
_i set [count _i, ['','',600,0,1,0,'Defense',0,'Guerilla',[]]];

for '_z' from 0 to (count _c)-1 do {
	if (isClass (configFile >> 'CfgVehicles' >> (_c select _z))) then {
		_get = (_c select _z) Call GetNamespace;
		if (isNil '_get') then {
			if ((_i select _z) select 0 == '') then {(_i select _z) set [0, [_c select _z,'displayName'] Call GetConfigInfo]};
			if (typeName ((_i select _z) select 4) == 'SCALAR') then {
				if (((_i select _z) select 4) == -2) then {
					_ret = (_c select _z) Call Compile preprocessFile "Common\Functions\Common_GetConfigVehicleCrewSlot.sqf";
					(_i select _z) set [4, _ret select 0];
					(_i select _z) set [9, _ret select 1];
				};
			};
			if (WF_Debug) then {(_i select _z) set [3,1]};
			_p = if ((_c select _z) isKindOf 'Man') then {'portrait'} else {'picture'};
			(_i select _z) set [1, [_c select _z,_p] Call GetConfigInfo];
			[_c select _z,_i select _z] Call SetNamespace;
		} else {
			diag_log Format ["[WFBE (INIT)][frameno:%2 | ticktime:%3] Core_GUE: Duplicated Element found '%1'",(_c select _z),diag_frameno,diag_tickTime];
		};
	} else {
		diag_log Format ["[WFBE (ERROR)][frameno:%2 | ticktime:%3] Core_GUE: Element '%1' is not a valid class.",(_c select _z),diag_frameno,diag_tickTime];
	};
};

diag_log Format ["[WFBE (INIT)][frameno:%2 | ticktime:%3] Core_GUE: Initialization (%1 Elements) - [Done]",count _c,diag_frameno,diag_tickTime];