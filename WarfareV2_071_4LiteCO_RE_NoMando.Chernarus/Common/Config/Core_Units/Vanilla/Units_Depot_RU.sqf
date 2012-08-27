Private ['_u'];

/* Russian Depot Vehicles */
_u			= ["MMT_Civ"];
_u set [count _u,"TT650_Civ"];
_u set [count _u,"Tractor"];
_u set [count _u,"Lada2"];
_u set [count _u,"LadaLM"];
_u set [count _u,"SkodaRed"];
_u set [count _u,"VWGolf"];
_u set [count _u,"datsun1_civil_2_covered"];
_u set [count _u,"hilux1_civil_2_covered"];
_u set [count _u,"UralCivil"];
if (paramPurchaseInfDepot) then {
	_u set [count _u,'WFBE_EASTSOLDIER' Call GetNamespace];
};

_u