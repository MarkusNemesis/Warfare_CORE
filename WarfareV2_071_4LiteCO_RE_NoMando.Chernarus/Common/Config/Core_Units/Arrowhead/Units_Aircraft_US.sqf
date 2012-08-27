Private ['_r','_u'];

_r = 'WFBE_RESTRICTIONADVAIR' Call GetNamespace;

//--- US Aircraft Vehicles.
_u 			= ['MH6J_EP1'];
_u set [count _u,'UH60M_EP1'];
_u set [count _u,'UH60M_MEV_EP1'];
_u set [count _u,'CH_47F_EP1'];
if (_r == 0 || _r == 1) then {
	_u set [count _u,'AH6J_EP1'];
	_u set [count _u,'AH64D_EP1'];
};
if (_r == 0) then {
	_u set [count _u,'C130J_uS_EP1'];
	_u set [count _u,'A10_uS_EP1'];
};
if (paramDLCBAF) then {
	_u set [count _u,'BAF_Merlin_HC3_D'];
	_u set [count _u,'CH_47F_BAF'];
	if (_r == 0 || _r == 1) then {
		_u set [count _u,'AW159_Lynx_BAF'];
		_u set [count _u,'BAF_Apache_AH1_D'];
	};
};

_u