Private ['_building','_dammages','_origin','_side','_sideBuilding','_side'];

_building = _this select 0;
_dammages = _this select 1;
_origin = _this select 2;
_sideBuilding = _this select 3;

_side = civilian;
if (side _origin == sideEnemy) then {
	if (_origin isKindOf westSoldierBaseClass) then {_side = west};
	if (_origin isKindOf eastSoldierBaseClass) then {_side = east};
} else {
	_side = side _origin;
};
diag_log Format ["Building damaged for %1 by %2", _dammages,name _origin];
if (_sideBuilding == _side) then {
	diag_log Format ["Building damaged for %1 by %2", _dammages,name _origin];
	if (_dammages > 200) then 
	{
		WFBE_LocalizeMessage = [_side,'CLTFNCLOCALIZEMESSAGE',['AttemptedBuildingTeamkill',name _origin,_dammages,getPlayerUID _origin]];
		publicVariable 'WFBE_LocalizeMessage';
		if (isHostedServer) then {[_side,'CLTFNCLOCALIZEMESSAGE',['AttemptedBuildingTeamkill',name _origin,_dammages,getPlayerUID _origin]] Spawn HandlePVF};
		diag_log Format ["[CORE] Player %1 tried to teamkill a building, their UID is: %2", name _origin, getPlayerUID _origin];
		serverCommand format ["kick %1", _origin];
	};
	_dammages = false;
} else {
	_dammages = [_building, _dammages] Call HandleBuildingDamage;
};

_dammages