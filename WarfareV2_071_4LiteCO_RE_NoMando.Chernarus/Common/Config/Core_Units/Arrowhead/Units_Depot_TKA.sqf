Private ['_u'];

/* Takistan Depot Vehicles */
_u 			= ["Old_bike_TK_CIV_EP1"];
_u set [count _u,"TT650_TK_CIV_EP1"];
_u set [count _u,"Lada2_TK_CIV_EP1"];
_u set [count _u,"VolhaLimo_TK_CIV_EP1"];
_u set [count _u,"Volha_2_TK_CIV_EP1"];
_u set [count _u,"Ural_TK_CIV_EP1"];
_u set [count _u,"S1203_TK_CIV_EP1"];
if (paramPurchaseInfDepot) then {
	_u set [count _u,'WFBE_EASTSOLDIER' Call GetNamespace];
};

_u