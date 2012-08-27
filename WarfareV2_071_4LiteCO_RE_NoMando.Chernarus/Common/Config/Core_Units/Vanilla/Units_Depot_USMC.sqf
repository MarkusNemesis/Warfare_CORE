Private ['_u'];

//--- USMC Depot Vehicles.
_u			= ["MMT_Civ"];
_u set [count _u,"TT650_Civ"];
_u set [count _u,"Lada1"];
_u set [count _u,"SkodaBlue"];
_u set [count _u,"car_sedan"];
_u set [count _u,"car_hatchback"];
_u set [count _u,"datsun1_civil_1_open"];
_u set [count _u,"datsun1_civil_3_open"];
_u set [count _u,"hilux1_civil_1_open"];
_u set [count _u,"V3S_Civ"];
_u set [count _u,"Ikarus"];
if (paramPurchaseInfDepot) then {
	_u set [count _u,'WFBE_WESTSOLDIER' Call GetNamespace];
};

_u