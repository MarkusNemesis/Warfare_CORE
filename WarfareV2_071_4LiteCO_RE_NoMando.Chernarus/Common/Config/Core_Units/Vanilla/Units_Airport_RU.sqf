Private ['_r','_u'];

_r = 'WFBE_RESTRICTIONADVAIR' Call GetNamespace;

/* RU Airport Vehicles */
_u = [];
if (_r == 0) then {
	_u = _u 	+ ['Su34'];
	_u set [count _u,'Su25_Ins'];
	_u set [count _u,'Su39'];
};

_u