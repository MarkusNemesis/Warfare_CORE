/* CIV Configuration */
Private ['_c','_get','_i','_p','_z'];

_c = [];
_i = [];

/* Infantry */
_c set [count _c, 'Worker1'];
_i set [count _i, ['','',375,4,-1,0,0,0.4,'Civilians',[]]];

_c set [count _c, 'Worker2'];
_i set [count _i, ['','',375,4,-1,0,0,0.4,'Civilians',[]]];

_c set [count _c, 'Worker3'];
_i set [count _i, ['','',375,4,-1,0,0,0.4,'Civilians',[]]];

_c set [count _c, 'Worker4'];
_i set [count _i, ['','',375,4,-1,0,0,0.4,'Civilians',[]]];

/* Light Vehicles */
_c set [count _c, 'MMT_Civ'];
_i set [count _i, ['','',50,8,-2,0,1,0,'Civilians',[]]];

_c set [count _c, 'TT650_Civ'];
_i set [count _i, ['','',100,12,-2,0,1,0,'Civilians',[]]];

_c set [count _c, 'Tractor'];
_i set [count _i, ['','',150,15,-2,0,1,0,'Civilians',[]]];

_c set [count _c, 'Lada1'];
_i set [count _i, ['','',175,18,-2,0,1,0,'Civilians',[]]];

_c set [count _c, 'Lada2'];
_i set [count _i, ['','',175,18,-2,0,1,0,'Civilians',[]]];

_c set [count _c, 'LadaLM'];
_i set [count _i, ['','',180,20,-2,0,1,0,'Civilians',[]]];

_c set [count _c, 'SkodaBlue'];
_i set [count _i, ['','',190,17,-2,0,1,0,'Civilians',[]]];

_c set [count _c, 'SkodaRed'];
_i set [count _i, ['','',190,17,-2,0,1,0,'Civilians',[]]];

_c set [count _c, 'car_sedan'];
_i set [count _i, ['','',200,20,-2,0,1,0,'Civilians',[]]];

_c set [count _c, 'car_hatchback'];
_i set [count _i, ['','',220,20,-2,0,1,0,'Civilians',[]]];

_c set [count _c, 'datsun1_civil_1_open'];
_i set [count _i, ['','',250,22,-2,0,1,0,'Civilians',[]]];

_c set [count _c, 'datsun1_civil_2_covered'];
_i set [count _i, ['','',250,22,-2,0,1,0,'Civilians',[]]];

_c set [count _c, 'datsun1_civil_3_open'];
_i set [count _i, ['','',250,22,-2,0,1,0,'Civilians',[]]];

_c set [count _c, 'VWGolf'];
_i set [count _i, ['','',270,23,-2,0,1,0,'Civilians',[]]];

_c set [count _c, 'hilux1_civil_1_open'];
_i set [count _i, ['','',340,25,-2,0,1,0,'Civilians',[]]];

_c set [count _c, 'hilux1_civil_2_covered'];
_i set [count _i, ['','',340,25,-2,0,1,0,'Civilians',[]]];

_c set [count _c, 'V3S_Civ'];
_i set [count _i, ['','',380,22,-2,0,1,0,'Civilians',[]]];

_c set [count _c, 'UralCivil'];
_i set [count _i, ['','',390,25,-2,0,1,0,'Civilians',[]]];

_c set [count _c, 'Ikarus'];
_i set [count _i, ['','',420,25,-2,0,1,0,'Civilians',[]]];

/* Defense Structures */
_c set [count _c, 'Land_HBarrier3'];
_i set [count _i, ['','',20,0,0,0,'Fortification',0,'Civilians',[]]];

_c set [count _c, 'Land_HBarrier5'];
_i set [count _i, ['','',30,0,0,0,'Fortification',0,'Civilians',[]]];

_c set [count _c, 'Land_HBarrier_large'];
_i set [count _i, ['','',50,0,0,0,'Fortification',0,'Civilians',[]]];

_c set [count _c, 'Land_fort_bagfence_long'];
_i set [count _i, ['','',10,0,0,0,'Fortification',0,'Civilians',[]]];

_c set [count _c, 'Land_fort_bagfence_corner'];
_i set [count _i, ['','',8,0,0,0,'Fortification',0,'Civilians',[]]];

_c set [count _c, 'Land_fort_bagfence_round'];
_i set [count _i, ['','',12,0,0,0,'Fortification',0,'Civilians',[]]];

_c set [count _c, 'Hhedgehog_concreteBig'];
_i set [count _i, ['','',95,0,0,0,'Fortification',0,'Civilians',[]]];

_c set [count _c, 'Hedgehog'];
_i set [count _i, ['','',5,0,0,0,'Fortification',0,'Civilians',[]]];

_c set [count _c, 'HeliH'];
_i set [count _i, ['','',15,0,0,0,'Strategic',0,'Civilians',[]]];

_c set [count _c, 'MASH'];
_i set [count _i, ['','',30,0,0,0,'Strategic',0,'Civilians',[]]];

_c set [count _c, 'Land_Campfire'];
_i set [count _i, ['','',3,0,0,0,'Strategic',0,'Civilians',[]]];

_c set [count _c, 'Base_WarfareBBarrier5x'];
_i set [count _i, ['','',15,0,0,0,'Fortification',0,'Civilians',[]]];

_c set [count _c, 'Base_WarfareBBarrier10x'];
_i set [count _i, ['','',25,0,0,0,'Fortification',0,'Civilians',[]]];

_c set [count _c, 'Base_WarfareBBarrier10xTall'];
_i set [count _i, ['','',50,0,0,0,'Fortification',0,'Civilians',[]]];

_c set [count _c, 'Land_fortified_nest_small'];
_i set [count _i, ['','',40,0,0,0,'Fortification',0,'Civilians',[]]];

_c set [count _c, 'Land_fortified_nest_big'];
_i set [count _i, ['','',100,0,0,0,'Fortification',0,'Civilians',[]]];

_c set [count _c, 'Land_Fort_Watchtower'];
_i set [count _i, ['','',125,0,0,0,'Fortification',0,'Civilians',[]]];

_c set [count _c, 'Land_fort_rampart'];
_i set [count _i, ['','',30,0,0,0,'Fortification',0,'Civilians',[]]];

_c set [count _c, 'Land_fort_artillery_nest'];
_i set [count _i, ['','',65,0,0,0,'Fortification',0,'Civilians',[]]];

_c set [count _c, 'Sign_Danger'];
_i set [count _i, [localize 'STR_WF_Minefield','',1200,0,0,0,'Strategic',0,'Civilians',[]]];

_c set [count _c, 'Fort_RazorWire'];
_i set [count _i, ['','',25,0,0,0,'Fortification',0,'Civilians',[]]];

_c set [count _c, 'Land_Ind_IlluminantTower'];
_i set [count _i, ['','',200,0,0,0,'Fortification',0,'Civilians',[]]];

// Markus - Add additional strategic objects
_c set [count _c, 'Land_GuardShed'];
_i set [count _i, ['','',150,0,0,0,'Strategic',0,'Civilians',[]]];

_c set [count _c, 'Land_BarGate2'];
_i set [count _i, ['','',50,0,0,0,'Strategic',0,'Civilians',[]]];

_c set [count _c, 'Land_Toilet'];
_i set [count _i, ['','',50,0,0,0,'Strategic',0,'Civilians',[]]];

_c set [count _c, 'TargetFakeTank_Lockable_EP1'];
_i set [count _i, ['','',500,0,0,0,'Strategic',0,'Civilians',[]]];
/// Markus

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
			diag_log Format ["[WFBE (INIT)][frameno:%2 | ticktime:%3] Core_CIV: Duplicated Element found '%1'",(_c select _z),diag_frameno,diag_tickTime];
		};
	} else {
		diag_log Format ["[WFBE (ERROR)][frameno:%2 | ticktime:%3] Core_CIV: Element '%1' is not a valid class.",(_c select _z),diag_frameno,diag_tickTime];
	};
};

diag_log Format ["[WFBE (INIT)][frameno:%2 | ticktime:%3] Core_CIV: Initialization (%1 Elements) - [Done]",count _c,diag_frameno,diag_tickTime];