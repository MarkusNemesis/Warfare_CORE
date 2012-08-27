Private ['_r','_u'];

_r = 'WFBE_RESTRICTIONADVAIR' Call GetNamespace;

//--- US Aircraft Vehicles.
_u 			= ['MH6J_EP1'];
_u set [count _u,'MH60S'];
_u set [count _u,'UH60M_EP1'];
_u set [count _u,'UH60M_MEV_EP1'];
_u set [count _u,'CH_47F_EP1'];
if (_r == 0 || _r == 1) then {
	_u set [count _u,'UH1Y'];
	_u set [count _u,'AH6J_EP1'];
	if (modACE) then {
		_u set [count _u,'ACE_AH6_GAU19_FLIR'];
		_u set [count _u,'ACE_AH6J_DAGR_FLIR'];
	};
	_u set [count _u,'AH1Z'];
	_u set [count _u,'AH64D_EP1'];
};
if (_r == 0) then {
	_u set [count _u,'MV22'];
	_u set [count _u,'C130J_US_EP1'];
	_u set [count _u,'F35B'];
	_u set [count _u,'AV8B'];
	_u set [count _u,'AV8B2'];
	_u set [count _u,'A10_US_EP1'];
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