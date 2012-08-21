MenuAction = -1;
_exited = false;
_timer = 3;

WFBE_ForceUpdate = true;

while {alive player && dialog} do {
	//--- Build Units.
	_enable = false;
	if (barracksInRange || lightInRange || heavyInRange || aircraftInRange || hangarInRange || depotInRange) then {_enable = true};
	ctrlEnable [11001,_enable];
	ctrlEnable [11002,gearInRange];
	
	_timer = _timer + 0.1;
	
	sleep 0.1;
	
	if (Side player != sideJoined) exitWith {closeDialog 0};
	if (!dialog || _exited) exitWith {};
	
	//--- Buy Units.
	if (MenuAction == 1) then {
		MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_BuyUnits";
		_exited = true;	
	};
	
	//--- Buy Gear.
	if (MenuAction == 2) then {
		MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_BuyGear";
		_exited = true;
	};	
	
	//--- Team Menu.
	if (MenuAction == 3) then {
		MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_Team";
		_exited = true;
	};
	
	//--- Voting Menu.
	if (MenuAction == 4) then {
		MenuAction = -1;
		_skip = false;
		_voteTime = WF_Logic getVariable Format["%1CommanderVoteTime",sideJoinedText];
		if (_voteTime <= 0) then {_skip = true};
		if (!_skip) then {
			CloseDialog 0;
			CreateDialog "RscMenu_Voting";
			if !(_skip) exitWith {};
		};
		WFBE_RequestCommanderVote = ['SRVFNCREQUESTCOMMANDERVOTE',sideJoined];
		publicVariable 'WFBE_RequestCommanderVote';
		if (isHostedServer) then {['SRVFNCREQUESTCOMMANDERVOTE',sideJoined] Spawn HandleSPVF};
		voted = true;
		waitUntil {((WF_Logic getVariable Format ["%1CommanderVoteTime",sideJoinedText])>0) || !dialog || !alive player};
		if (!alive player || !dialog) exitWith {_exited = true};
		closeDialog 0;
		createDialog "RscMenu_Voting";
		_exited = true;
	};
	
	//--- Unflip Vehicle.
	if (MenuAction == 10) then { //added-MrNiceGuy
		MenuAction = -1;
		_vehicle = vehicle player;
		if (player != _vehicle) then {
			if (getPos _vehicle select 2 > 3 && !surfaceIsWater (getPos _x)) then {
				[_vehicle, getPos _vehicle, 15] Call PlaceSafe;
			} else {
				_vehicle setPos [getPos _vehicle select 0, getPos _vehicle select 1, 0.5];
				_vehicle setVelocity [0,0,-0.5];
			};
		};
		if (player == _vehicle) then {
			_objects = player nearEntities[["Car","Motorcycle","Tank"],10];
			if (count _objects > 0) then {		
				{
					if (getPos _x select 2 > 3 && !surfaceIsWater (getPos _x)) then {
						[_x, getPos _x, 15] Call PlaceSafe;
					} else {
						_x setPos [getPos _x select 0, getPos _x select 1, 0.5];
						_x setVelocity [0,0,-0.5];
					};
				} forEach _objects;
			};
		};
	};
	
	//--- Headbug Fix.
	if (MenuAction == 11) then { //added-MrNiceGuy
		MenuAction = -1;
		closeDialog 0;
		titleCut["","BLACK FADED",0];
		_pos = position player;
		_vehi = "Lada1" createVehicle [0,0,0];
		player moveInCargo _vehi;
		deleteVehicle _vehi;
		player setPos _pos;
		titleCut["","BLACK IN",5];
	};
	
	//--- Display Parameters.
	if (MenuAction == 12) exitWith { //added-MrNiceGuy
		MenuAction = -1;
		closeDialog 0;
		createDialog "RscDisplay_Parameters";
	};
	
	//--- Uptime.
	_uptime = Call GetTime; //added-MrNiceGuy
	ctrlSetText [11015,Format[localize 'STR_WF_MAIN_Uptime',_uptime select 0,_uptime select 1,_uptime select 2, Call Compile "TidiMul"]];

	_enable = false; //added-MrNiceGuy
	if (!isNull(commanderTeam)) then {if (commanderTeam == group player) then {_enable = true}};
	ctrlEnable [11005,_enable]; //--- Team Orders
	ctrlEnable [11008,_enable]; //--- Commander Menu
	ctrlEnable [11006,commandInRange]; //--- Special Menu
	ctrlEnable [11007,commandInRange]; //--- Upgrade Menu

	//--- Command Menu.
	if (MenuAction == 5) exitWith { //added-MrNiceGuy
		MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_Command";
	};
	
	//--- Tactical Menu.
	if (MenuAction == 6) exitWith { //added-MrNiceGuy
		MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_Tactical";
	};

	//--- Upgrade Menu.
	if (MenuAction == 7) exitWith { //added-MrNiceGuy
		MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_Upgrade";
	};	
	
	//--- Economy Menu.
	if (MenuAction == 8) exitWith { //added-MrNiceGuy
		MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_Economy";
	};

	//--- Service Menu.
	if (MenuAction == 9) exitWith { //added-MrNiceGuy
		MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_Service";
	};
};