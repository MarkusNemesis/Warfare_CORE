Private ['_building','_dammages','_origin','_side','_sideBuilding','_side', '_projectile', '_projDamage'];

_building = _this select 0;
_dammages = _this select 1;
_origin = _this select 2;
_sideBuilding = _this select 3;
_projectile = _this select 4;
_projDamage = getNumber(configFile/"cfgAmmo"/_projectile/"hit"); // Gets the damage amount of what was shot at it.

_side = civilian;
if (side _origin == sideEnemy) then {
	if (_origin isKindOf westSoldierBaseClass) then {_side = west};
	if (_origin isKindOf eastSoldierBaseClass) then {_side = east};
} else {
	_side = side _origin;
};
//diag_log Format ["Building damaged for %1 by %2, using a %3 that hits for %4 damage.", _dammages ,name _origin, _projectile, _projDamage];
if (_sideBuilding == _side) then {
	if (_projDamage > 200) then 
	{
		WFBE_LocalizeMessage = [_side,'CLTFNCLOCALIZEMESSAGE',['AttemptedBuildingTeamkill',name _origin,_projDamage,getPlayerUID _origin]];
		publicVariable 'WFBE_LocalizeMessage';
		if (isHostedServer) then {[_side,'CLTFNCLOCALIZEMESSAGE',['AttemptedBuildingTeamkill',name _origin,_projDamage,getPlayerUID _origin]] Spawn HandlePVF};
		diag_log Format ["[CORE] Player %1 tried to teamkill a building, their UID is: %2", name _origin, getPlayerUID _origin];
	};
	_dammages = false;
} else {
	_dammages = [_building, _dammages] Call HandleBuildingDamage;
};

_dammages