Private ['_clientCommandPV','_count','_l','_serverCommandPV'];

_l		= ["RequestVehicleLock"];
_l set [count _l, "RequestChangeScore"];
_l set [count _l, "RequestCommanderVote"];
_l set [count _l, "RequestStructure"];
_l set [count _l, "RequestDefense"];
_l set [count _l, "RequestJoin"];
_l set [count _l, "RequestMHQRepair"];
_l set [count _l, "RequestSpecial"];
_l set [count _l, "RequestTeamUpdate"];
_l set [count _l, "RequestUpgrade"];
if (paramUseWorkers) then {_l set [count _l, "RequestWorker"]};

_serverCommandPV = _l;

_l =      ["AllCampsCaptured"];
_l set [count _l, "AwardBounty"];
_l set [count _l, "CampCaptured"];
_l set [count _l, "CanJoin"];
_l set [count _l, "ChangeScore"];
_l set [count _l, "CommanderVote"];
_l set [count _l, "DisplayICBM"];
_l set [count _l, "EndGame"];
_l set [count _l, "ISIS_AddAction"];
_l set [count _l, "LocalizeMessage"];
_l set [count _l, "Penalty"];
_l set [count _l, "PerformAction"];
_l set [count _l, "SetHQStatus"];
_l set [count _l, "SetTask"];
_l set [count _l, "SetVehicleLock"];
_l set [count _l, "TownCaptured"];
_l set [count _l, "TownCapturedPublic"];
_l set [count _l, "UAV_Reveal"];
_l set [count _l, "VoteForCommander"];

/* Add missions Clients PVF here */
if (paramSecondaryMissions) then {
	_l set [count _l, 'M_BASE_Attack'];
	_l set [count _l, 'M_TOWN_Attack'];
	_l set [count _l, 'M_UAV_RetrieveModule'];
	/* OA/CO Specific PVF */
	if !(WF_A2_Vanilla) then {
		_l set [count _l, 'M_PLAYERS_Attack_Air'];
	};
};

_clientCommandPV = _l;

for [{_count = Count _clientCommandPV - 1},{_count >= 0},{_count = _count - 1}] do {Call Compile Format["CLTFNC%1 = Compile PreprocessFile 'Client\PVFunctions\%1.sqf'",_clientCommandPV Select _count,_count]};
for [{_count = Count _serverCommandPV - 1},{_count >= 0},{_count = _count - 1}] do {Call Compile Format["SRVFNC%1 = Compile PreprocessFile 'Server\PVFunctions\%1.sqf'",_serverCommandPV Select _count,_count]};

//--- Handle the client side publicVariable.
if (local player) then {
	{Format['WFBE_%1',_x] addPublicVariableEventHandler {(_this select 1) Spawn HandlePVF}} forEach _clientCommandPV;
};
//--- Handle the server side publicVariable.
if (isServer) then {
	{Format['WFBE_%1',_x] addPublicVariableEventHandler {(_this select 1) Spawn HandleSPVF}} forEach _serverCommandPV;
};

diag_log Format["[WFBE (INIT)][frameno:%3 | ticktime:%4] Init_PublicVariables: Public Variable Initialization (SRV: %1 CLT: %2) - [Done]",count _serverCommandPV, count _clientCommandPV,diag_frameno,diag_tickTime];