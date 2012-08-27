Private ['_u'];

/* US Depot Vehicles */
_u 			= ["Old_bike_TK_CIV_EP1"];
_u set [count _u,"Old_moto_TK_Civ_EP1"];
_u set [count _u,"Lada1_TK_CIV_EP1"];
_u set [count _u,"Volha_1_TK_CIV_EP1"];
_u set [count _u,"LandRover_TK_CIV_EP1"];
_u set [count _u,"V3S_Open_TK_CIV_EP1"];
_u set [count _u,"Ikarus_TK_CIV_EP1"];
if (paramPurchaseInfDepot) then {
	_u set [count _u,'WFBE_WESTSOLDIER' Call GetNamespace];
};

_u