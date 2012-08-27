//*****************************************************************************************
//Description: Creates a small construction site.
//*****************************************************************************************
Private ["_construct","_constructed","_direction","_group","_index","_nearLogic","_objects","_position","_rlType","_side","_site","_siteName","_startTime","_structures","_structuresNames","_time","_timeNextUpdate","_type", "_tidimul"]; // Markus - Tidi
_type = _this select 0;
_side = _this select 1;
_position = _this select 2;
_direction = _this select 3;
_index = _this select 4;
_tidimul = WF_Logic getVariable 'Tidimul';
_time = ((Format ["WFBE_%1STRUCTURETIMES",str _side] Call GetNamespace) select _index) / 2;

_siteName = Format["WFBE_%1CONSTRUCTIONSITE",str _side] Call GetNamespace;

_structures = Format ['WFBE_%1STRUCTURES',str _side] Call GetNamespace;
_structuresNames = Format ['WFBE_%1STRUCTURENAMES',str _side] Call GetNamespace;
_rlType = _structures select (_structuresNames find _type);

_startTime = time;
_timeNextUpdate = _startTime + (_time * _tidimul); // Markus - Make it affected by time dialation.

_objects = [];
if (WF_A2_Arrowhead) then {_objects = [[_siteName,[0,0,0.00242043],359.958,1,0],["Paleta2",[0.430908,-5.60693,-0.30535],359.945,1,0],["Paleta1",[-2.62598,-6.0437,0.000275612],359.951,1,0],["Land_Barrel_sand",[-10.1826,0.356689,7.62939e-005],0.00146227,1,0],["Land_Barrel_sand",[-10.7854,-1.97974,0.000187874],359.987,1,0],["Paleta1",[-9.7251,5.53955,0.000106812],359.976,1,0],["Land_Barrel_sand",[-11.053,-4.12183,0.00019455],359.987,1,0],["Land_Barrel_sand",[-12.3416,-1.57056,7.43866e-005],0.00146227,1,0],["Barrels",[-12.5134,0.682861,0.000136375],0.00146227,1,0],["RoadBarrier_long",[1.63794,-12.8806,-0.000716209],359.92,1,0],["Land_Barrel_sand",[-11.5149,-6.25757,0.00084877],359.938,1,0],["Land_Barrel_sand",[-12.7363,-3.63184,0.000207901],359.938,1,0],["Barrel4",[14.1938,0.500732,0.000412941],359.98,1,0],["Land_Barrel_sand",[-13.0708,-5.9082,0.000863075],359.938,1,0],["Barrel5",[14.7661,-1.11182,0.000411987],359.98,1,0],["Barrel1",[14.7314,2.21338,0.000409126],359.98,1,0],["Paleta2",[12.0034,9.8418,-0.305568],0.0412118,1,0],["RoadCone",[-12.2202,-13.7024,0.000279427],359.984,1,0],["RoadCone",[-12.1877,15.0469,0.000328064],359.969,1,0],["RoadCone",[14.5701,-13.311,0.000322342],359.995,1,0],["RoadCone",[14.6084,14.6824,0.000889778],359.994,1,0]]};
if (WF_A2_Vanilla || WF_A2_CombinedOps) then {_objects = [[_siteName,[0,0,0.00242043],359.958,1,0],["Paleta2",[0.430908,-5.60693,-0.30535],359.945,1,0],["Paleta1",[-2.62598,-6.0437,0.000275612],359.951,1,0],["Land_Ind_BoardsPack1",[-0.82251,-9.15479,0.00291061],49.9467,1,0],["Land_Barrel_sand",[-10.1826,0.356689,7.62939e-005],0.00146227,1,0],["Land_Barrel_sand",[-10.7854,-1.97974,0.000187874],359.987,1,0],["Paleta1",[-9.7251,5.53955,0.000106812],359.976,1,0],["Land_Ind_Timbers",[1.88354,11.1238,-0.487763],95.0061,1,0],["Land_Barrel_sand",[-11.053,-4.12183,0.00019455],359.987,1,0],["Land_Ind_BoardsPack1",[-6.6582,-10.0774,0.0021534],324.956,1,0],["Land_Ind_BoardsPack1",[9.50244,-7.4668,0.00151634],270,1,0],["Land_Ind_Timbers",[12.0264,4.19629,-0.534346],359.98,1,0],["Land_Barrel_sand",[-12.3416,-1.57056,7.43866e-005],0.00146227,1,0],["Barrels",[-12.5134,0.682861,0.000136375],0.00146227,1,0],["RoadBarrier_long",[1.63794,-12.8806,-0.000716209],359.92,1,0],["Land_Barrel_sand",[-11.5149,-6.25757,0.00084877],359.938,1,0],["Land_Barrel_sand",[-12.7363,-3.63184,0.000207901],359.938,1,0],["Land_Ind_BoardsPack1",[-4.74194,-12.4204,0.00105476],49.9807,1,0],["Barrel4",[14.1938,0.500732,0.000412941],359.98,1,0],["Land_Barrel_sand",[-13.0708,-5.9082,0.000863075],359.938,1,0],["Barrel5",[14.7661,-1.11182,0.000411987],359.98,1,0],["Land_Ind_BoardsPack1",[9.42847,-11.5142,0.00151634],359.964,1,0],["Barrel1",[14.7314,2.21338,0.000409126],359.98,1,0],["Paleta2",[12.0034,9.8418,-0.305568],0.0412118,1,0],["RoadCone",[-12.2202,-13.7024,0.000279427],359.984,1,0],["RoadCone",[-12.1877,15.0469,0.000328064],359.969,1,0],["RoadCone",[14.5701,-13.311,0.000322342],359.995,1,0],["RoadCone",[14.6084,14.6824,0.000889778],359.994,1,0]]};
_construct = Compile PreprocessFile "ca\modules\dyno\data\scripts\objectMapper.sqf";
_constructed = ([_position,_direction,_objects] Call _construct);

//--- Create the logic.
(createGroup sideLogic) createUnit ["LocationLogicStart",_position,[],0,"NONE"];

_nearLogic = objNull;
if !(paramUseWorkers) then {
	//--- Grab the logic.
	_nearLogic = _position nearEntities [["LocationLogicStart"],15];
	if (count _nearLogic > 0) then {_nearLogic = ([_position, _nearLogic] Call SortByDistance) select 0} else {_nearLogic = objNull};
	
	if (isNull _nearLogic) exitWith {};
	
	//--- Position the logic.
	_nearLogic setPos _position;
	
	_nearLogic setVariable ["WFBE_B_Type", _rlType];

	waitUntil {time >= _timeNextUpdate};
	_timeNextUpdate = _startTime + ((_time * 2) * _tidimul);// Markus - Make it affected by time dialation.
} else {
	//--- Grab the logic.
	_nearLogic = _position nearEntities [["LocationLogicStart"],15];
	if (count _nearLogic > 0) then {_nearLogic = ([_position, _nearLogic] Call SortByDistance) select 0} else {_nearLogic = objNull};
	
	if (isNull _nearLogic) exitWith {};
	
	//--- Position the logic.
	_nearLogic setPos _position;
	
	//--- Instanciate the logic.
	_nearLogic setVariable ["WFBE_B_Completion", 0];
	_nearLogic setVariable ["WFBE_B_CompletionRatio", 0.6];
	_nearLogic setVariable ["WFBE_B_Direction", _direction];
	_nearLogic setVariable ["WFBE_B_Position", _position];
	_nearLogic setVariable ["WFBE_B_Repair", false];
	_nearLogic setVariable ["WFBE_B_Type", _rlType];
	
	//--- Add the logic to the list.
	[Format ["WFBE_WORKERS_%1LOGIC",str _side],((Format ["WFBE_WORKERS_%1LOGIC",str _side]) Call GetNamespace) + [_nearLogic],true] Call SetNamespace;
	
	//--- Awaits for 33% of completion.
	while {true} do {
		sleep (1 * _tidimul);
		if ((_nearLogic getVariable "WFBE_B_Completion") >= 33.33) exitWith {};
		waituntil {diag_frameno >= diag_frameno + 1}; // Markus - Ensures that loops only run once per tick.
	};
};

if (WF_A2_Arrowhead) then {_objects = [[_siteName,[2.52539,-0.0065918,-0.000685692],359.928,1,0],["Land_WoodenRamp",[-2.27954,-0.582764,0.377601],270,1,0],["Land_WoodenRamp",[0.94751,-4.2085,0.388518],179.986,1,0],[_siteName,[2.60547,6.20386,-0.000685692],359.928,1,0],["Land_Dirthump01_EP1",[-8.63159,8.021,-0.00167847],29.985,1,0]]};
if (WF_A2_Vanilla || WF_A2_CombinedOps) then {_objects = [[_siteName,[2.52539,-0.0065918,-0.000685692],359.928,1,0],["Land_WoodenRamp",[-2.27954,-0.582764,0.377601],270,1,0],["Land_WoodenRamp",[0.94751,-4.2085,0.388518],179.986,1,0],[_siteName,[2.60547,6.20386,-0.000685692],359.928,1,0],["Land_Dirthump01",[-8.63159,8.021,-0.00167847],29.985,1,0]]};
_constructed = _constructed + ([_position,_direction,_objects] Call _construct);

if !(paramUseWorkers) then {
	waitUntil {time >= _timeNextUpdate};
	_timeNextUpdate = _startTime + ((_time * 3) * _tidimul);// Markus - Make it affected by time dialation.
	waituntil {diag_frameno >= diag_frameno + 1}; // Markus - Ensures that loops only run once per tick.
} else {
	//--- Awaits for 66%
	while {true} do {
		sleep 1 * _tidimul;
		if ((_nearLogic getVariable "WFBE_B_Completion") >= 66.66) exitWith {};
		waituntil {diag_frameno >= diag_frameno + 1}; // Markus - Ensures that loops only run once per tick.
	};
};

if (WF_A2_Arrowhead) then {_objects = [["Land_Misc_Scaffolding",[5.67456,2.39307,0.0763969],179.92,1,0],["Land_Dirthump02_EP1",[-8.63159,8.021,0.000141144],29.9958,1,0],["Barrels",[11.4519,12.5623,0.00311279],359.877,1,0],["RoadCone",[-12.1465,-13.7354,0.000406265],359.958,1,0]]};
if (WF_A2_Vanilla || WF_A2_CombinedOps) then {_objects = [["Land_Misc_Scaffolding",[5.67456,2.39307,0.0763969],179.92,1,0],["Land_Ind_Timbers",[10.0811,4.63477,-0.127748],359.961,1,0],["Land_Dirthump02",[-8.63159,8.021,0.000141144],29.9958,1,0],["Land_Ind_BoardsPack1",[13.3027,-7.63159,0.00639725],359.838,1,0],["Land_Ind_BoardsPack1",[-9.70117,-12.4263,0.00152397],324.976,1,0],["Land_Ind_BoardsPack1",[-7.78491,-14.7693,0.00152779],49.9774,1,0],["Barrels",[11.4519,12.5623,0.00311279],359.877,1,0],["Land_Ind_BoardsPack1",[13.4668,-11.5061,0.00515175],359.942,1,0],["RoadCone",[-12.1465,-13.7354,0.000406265],359.958,1,0]]};
_constructed = _constructed + ([_position,_direction,_objects] Call _construct);

if !(paramUseWorkers) then {
	waitUntil {time >= _timeNextUpdate};
	
	if !(isNull _nearLogic) then {
		_group = group _nearLogic;
		deleteVehicle _nearLogic;
		deleteGroup _group;
	};
} else {
	//--- Awaits for 100%
	while {true} do {
		sleep 1;
		if ((_nearLogic getVariable "WFBE_B_Completion") >= 100) exitWith {};
		waituntil {diag_frameno >= diag_frameno + 1}; // Markus - Ensures that loops only run once per tick.
	};
	
	//--- Remove the logic from the list since it's built. Add it back if destroyed.
	[Format ["WFBE_WORKERS_%1LOGIC",str _side],((Format ["WFBE_WORKERS_%1LOGIC",str _side]) Call GetNamespace) - [_nearLogic],true] Call SetNamespace;
};

{if !(isNull _x) then {deleteVehicle _x}} forEach _constructed;

_site = createVehicle [_type, _position, [], 0, "NONE"];//_type createVehicle _position;
_site setDir _direction;
_site setPos _position;

["Constructed",_type,_side] Spawn SideMessage;

if (!IsNull _site) then {
	Call Compile Format ["%1BaseStructures = %1BaseStructures + [_site]; publicVariable '%1BaseStructures';",str _side];

	_site setVehicleInit Format["[this,false,%1] ExecVM 'Client\Init\Init_BaseStructure.sqf'",_side];
	processInitCommands;
	
	_site addEventHandler ["hit",{_this Spawn BuildingDamaged}];
	if (paramHandleFF) then {
		Call Compile Format ["_site addEventHandler ['handleDamage',{[_this select 0,_this select 2,_this select 3, %1] Call BuildingHandleDamages}]",_side];
	} else {
		_site addEventHandler ['handleDamage',{[_this select 0, _this select 2] Call HandleBuildingDamage}];
	};
	Call Compile Format ["_site AddEventHandler ['killed',{[_this select 0,_this select 1,%1,'%2'] Spawn BuildingKilled}];",_side,_type];
	
	diag_log Format["[WFBE (INFORMATION)][frameno:%3 | ticktime:%4] Construction_MediumSite: A %1 %2 has been constructed",str _side,_type,diag_frameno,diag_tickTime];
};