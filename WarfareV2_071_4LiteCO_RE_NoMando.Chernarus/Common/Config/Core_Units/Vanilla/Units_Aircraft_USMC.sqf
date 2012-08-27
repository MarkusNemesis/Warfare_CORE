Private ['_r','_u'];

_r = 'WFBE_RESTRICTIONADVAIR' Call GetNamespace;

//--- USMC Aircraft Vehicles.
_u = 		['MH60S'];
if (_r == 0 || _r == 1) then {
	_u set [count _u,'UH1Y'];
	_u set [count _u,'AH1Z'];
	_u set [count _u,'AH64D'];
};
if (_r == 0) then {
	_u set [count _u,'MV22'];
	_u set [count _u,'C130J'];
	_u set [count _u,'F35B'];
	_u set [count _u,'AV8B'];
	_u set [count _u,'AV8B2'];
	_u set [count _u,'A10'];
};

_u