Private ['_r','_u'];

_r = 'WFBE_RESTRICTIONADVAIR' Call GetNamespace;

//--- Takistan Aircraft Vehicles.
_u 			= ['Mi17_TK_EP1'];
_u set [count _u,'UH1H_TK_EP1'];
if (_r == 0 ||_r == 1) then {
	_u set [count _u,'Mi24_D_TK_EP1'];
};
if (_r == 0) then {
	_u set [count _u,'An2_TK_EP1'];
	_u set [count _u,'L39_TK_EP1'];
	_u set [count _u,'Su25_TK_EP1'];
};

_u