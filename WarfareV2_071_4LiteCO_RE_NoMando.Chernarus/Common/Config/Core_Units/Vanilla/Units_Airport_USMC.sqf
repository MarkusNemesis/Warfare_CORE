Private ['_r','_u'];

_r = 'WFBE_RESTRICTIONADVAIR' Call GetNamespace;

//--- USMC Airport Vehicles.
_u = [];
if (_r == 0) then {
	_u = _u 	+ ['MV22'];
	_u set [count _u,'C130J'];
	_u set [count _u,'F35B'];
	_u set [count _u,'AV8B'];
	_u set [count _u,'AV8B2'];
	_u set [count _u,'A10'];
};

_u