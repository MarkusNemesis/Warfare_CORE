Private ['_aibase','_commanderTeam','_comVoteTime','_delay','_side','_sideText', '_tidimul'];
_side = _this select 0;
_sideText = _side;
_tidimul = WF_Logic getVariable 'Tidimul';
_comVoteTime = 'WFBE_VOTETIME' Call GetNamespace;
WF_Logic setVariable [Format["%1CommanderVoteTime",_sideText],_comVoteTime,true];

while {_comVoteTime > 0} do {
	sleep (1  * _tidimul);
	_comVoteTime = _comVoteTime - 1;
	WF_Logic setVariable [Format["%1CommanderVoteTime",_sideText],_comVoteTime,true];
	_tidimul = WF_Logic getVariable 'Tidimul';
	waituntil {diag_frameno >= diag_frameno + 1}; // Markus - Ensures that loops only run once per tick.
};
	
WF_Logic setVariable [Format["%1CommanderVoteTime",_sideText],_comVoteTime,true];

_commanderTeam = [_side] Call GetCommanderFromVotes;
if (!IsNull _commanderTeam) then {WF_Logic setVariable [Format ["%1CommanderTeam",_sideText],_commanderTeam,true]} else {WF_Logic setVariable [Format ["%1CommanderTeam",_sideText],objNull,true]};

_delay = 0;
if (_side == East) then {_delay = 1};

sleep (_delay  * _tidimul);

WFBE_CommanderVote = [_side,'CLTFNCCOMMANDERVOTE',_commanderTeam];
publicVariable 'WFBE_CommanderVote';
if (isHostedServer) then {[_side,'CLTFNCCOMMANDERVOTE',_commanderTeam] Spawn HandlePVF};

[Format["WFBE_%1_LastCommander",_sideText],_commanderTeam,true] Call SetNamespace;

_aibase = Format["WFBE_%1_AIBase",_sideText] Call GetNamespace;
// if (isNull _commanderTeam && paramAIcom && !_aibase) then {[_side] ExecFSM "Server\FSM\aibase.fsm"};
if (isNull _commanderTeam && paramAIcom && !_aibase) then {[_side] ExecFSM "Server\FSM\aicommander.fsm"};

if (isNull _commanderTeam) then {
	diag_log Format["[WFBE (INFORMATION)][frameno:%2 | ticktime:%3] Server_VoteForCommander: %1 Commander = AI Commander.",_sideText,diag_frameno,diag_tickTime];
} else {
	diag_log Format["[WFBE (INFORMATION)][frameno:%3 | ticktime:%4] Server_VoteForCommander: %1 Commander = %2.",_sideText,name (leader _commanderTeam),diag_frameno,diag_tickTime];
};