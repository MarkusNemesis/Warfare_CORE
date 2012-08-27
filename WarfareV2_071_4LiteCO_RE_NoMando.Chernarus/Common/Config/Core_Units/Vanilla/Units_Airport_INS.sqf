Private ['_r','_u'];

_r = 'WFBE_RESTRICTIONADVAIR' Call GetNamespace;

/* Insurgent Airport Vehicles */
_u = [];
if (_r == 0) then {
	_u set [count _u,'Su25_Ins'];
};

_u