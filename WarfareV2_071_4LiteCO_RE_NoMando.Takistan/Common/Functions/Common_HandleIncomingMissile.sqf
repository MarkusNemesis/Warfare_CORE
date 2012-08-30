// Markus - Add support for FAB250 and Mk82 missile range limit
Private ["_ammo","_irLock","_missile","_source","_unit","_model","_nvLock"];
diag_log "Missile range script activated";
_unit = _this select 0;
_ammo = _this select 1;
_source = _this select 2;

_missile = nearestObject [_source,_ammo];
if (isNull _missile) exitWith {diag_log "Missile range script triggered, but no missile found";};

//--- Get the ammo type.
_irLock = getNumber(configFile >> "CfgAmmo" >> _ammo >> "irLock");
_model = getText(configFile >> "CfgAmmo" >> _ammo >> "model");
_nvLock = getNumber(configFile >> "CfgAmmo" >> _ammo >> "nvlock");

if (_model == "\ca\air_E\fab250") then {_irLock = 1;};
if (_model == "\ca\air\mk82") then {_irLock = 1;};
if (_nvLock == 1) then {_irLock = 1;};
/// Markus
//--- IR Lock is affected
if (_irLock == 1) then {
	_distance = _unit distance _source;
	
	_limit = 'WFBE_INCOMINGMISSILEMAXRANGE' Call GetNamespace;
	
	if (_distance > _limit) then {
		waitUntil {_missile distance _source > _limit};
                diag_log format ["Missile went outside of missile range and has been deleted. Distance: %1 | Type: %2 | Source: %3", _missile distance _source, _model, _source];
		deleteVehicle _missile;
	};
};