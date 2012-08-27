Private ['_u'];

/* US Depot Vehicles */
_u 			= ["Old_bike_TK_CIV_EP1"];
_u set [count _u,"MMT_Civ"];
_u set [count _u,"Old_moto_TK_Civ_EP1"];
_u set [count _u,"Lada1_TK_CIV_EP1"];
_u set [count _u,"SkodaBlue"];
_u set [count _u,"car_sedan"];
_u set [count _u,"car_hatchback"];
_u set [count _u,"Volha_1_TK_CIV_EP1"];
_u set [count _u,"datsun1_civil_1_open"];
_u set [count _u,"datsun1_civil_3_open"];
_u set [count _u,"hilux1_civil_1_open"];
_u set [count _u,"LandRover_TK_CIV_EP1"];
_u set [count _u,"V3S_Open_TK_CIV_EP1"];
_u set [count _u,"Ikarus_TK_CIV_EP1"];
_u set [count _u,"TT650_Civ"];
_u set [count _u,"Tractor"];
_u set [count _u,"Lada2_TK_CIV_EP1"];
_u set [count _u,"SkodaRed"];
_u set [count _u,"VolhaLimo_TK_CIV_EP1"];
_u set [count _u,"Volha_2_TK_CIV_EP1"];
_u set [count _u,"VWGolf"];
_u set [count _u,"datsun1_civil_2_covered"];
_u set [count _u,"hilux1_civil_2_covered"];
_u set [count _u,"S1203_TK_CIV_EP1"];
_u set [count _u,"Ural_TK_CIV_EP1"];
if (paramPurchaseInfDepot) then {
	_u set [count _u,'WFBE_WESTSOLDIER' Call GetNamespace];
};

_u