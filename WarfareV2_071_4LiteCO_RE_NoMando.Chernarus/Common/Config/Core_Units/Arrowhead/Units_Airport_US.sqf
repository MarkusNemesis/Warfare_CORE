Private ['_r','_u'];

_r = 'WFBE_RESTRICTIONADVAIR' Call GetNamespace;

/* US Airport Vehicles */
_u = [];
if (_r == 0) then {
	_u set [count _u,'C130J_uS_EP1'];
	_u set [count _u,'A10_uS_EP1'];
};

_u