Private ['_c','_count','_d','_dir','_dis','_n','_s','_t','_v'];

/* Root Definition */
WESTHQ = "BMP2_HQ_CDF_unfolded";
WESTBAR = "CDF_WarfareBBarracks";
WESTLVF = "CDF_WarfareBLightFactory";
WESTCC = "CDF_WarfareBUAVterminal";
WESTHEAVY = "CDF_WarfareBHeavyFactory";
WESTAIR = "CDF_WarfareBAircraftFactory";
WESTSP = "CDF_WarfareBVehicleServicePoint";
WESTAAR = "CDF_WarfareBAntiAirRadar";

/* Flag Textures */
['WFBE_WESTFLAG','\Ca\Data\flag_chernarus_co.paa',true] Call SetNamespace;

/* Mash used after being deployed */
['WFBE_WESTFARP','Camp',true] Call SetNamespace;

/* Construction Crates */
['WFBE_WESTCONSTRUCTIONSITE','CDF_WarfareBContructionSite',true] Call SetNamespace;

/* Structures */
_v			= ["Headquarters"];
_n			= [WESTHQ];
_d			= [getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName")];
_c			= [('WFBE_HQDEPLOYPRICE' Call GetNamespace)];
_t			= [if (WF_Debug) then {1} else {30}];
_s			= ["HQSite"];
_dis		= [15];
_dir		= [0];

_v set [count _v, "Barracks"];
_n set [count _n, WESTBAR];
_d set [count _d, getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName")];
_c set [count _c, 200];
_t set [count _t, if (WF_Debug) then {1} else {70}];
_s set [count _s, "SmallSite"];
_dis set [count _dis, 18];
_dir set [count _dir, 90];

_v set [count _v, "Light"];
_n set [count _n, WESTLVF];
_d set [count _d, getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName")];
_c set [count _c, 600];
_t set [count _t, if (WF_Debug) then {1} else {90}];
_s set [count _s, "MediumSite"];
_dis set [count _dis, 25];
_dir set [count _dir, 90];

_v set [count _v, "CommandCenter"];
_n set [count _n, WESTCC];
_d set [count _d, localize "STR_WF_CommandCenter_uSMC"];
_c set [count _c, 1200];
_t set [count _t, if (WF_Debug) then {1} else {110}];
_s set [count _s, "SmallSite"];
_dis set [count _dis, 20];
_dir set [count _dir, 90];

_v set [count _v, "Heavy"];
_n set [count _n, WESTHEAVY];
_d set [count _d, getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName")];
_c set [count _c, 2800];
_t set [count _t, if (WF_Debug) then {1} else {130}];
_s set [count _s, "MediumSite"];
_dis set [count _dis, 25];
_dir set [count _dir, 90];

_v set [count _v, "Aircraft"];
_n set [count _n, WESTAIR];
_d set [count _d, getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName")];
_c set [count _c, 4400];
_t set [count _t, if (WF_Debug) then {1} else {150}];
_s set [count _s, "SmallSite"];
_dis set [count _dis, 31];
_dir set [count _dir, 90];

_v set [count _v, "ServicePoint"];
_n set [count _n, WESTSP];
_d set [count _d, getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName")];
_c set [count _c, 700];
_t set [count _t, if (WF_Debug) then {1} else {70}];
_s set [count _s, "SmallSite"];
_dis set [count _dis, 21];
_dir set [count _dir, 90];

if (paramAARadar) then {
	_v set [count _v, "AARadar"];
	_n set [count _n, WESTAAR];
	_d set [count _d, getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName")];
	_c set [count _c, 3200];
	_t set [count _t, if (WF_Debug) then {1} else {280}];
	_s set [count _s, "MediumSite"];
	_dis set [count _dis, 21];
	_dir set [count _dir, 90];
};

for [{_count = count _v - 1},{_count >= 0},{_count = _count - 1}] do {
	[Format["WFBE_WEST%1TYPE",_v select _count],_count,true] Call SetNamespace;
};

['WFBE_WESTMHQNAME','BMP2_HQ_CDF',true] Call SetNamespace;

['WFBE_WESTSTRUCTURES',_v,true] Call SetNamespace;
['WFBE_WESTSTRUCTURENAMES',_n,true] Call SetNamespace;
['WFBE_WESTSTRUCTUREDESCRIPTIONS',_d,true] Call SetNamespace;
['WFBE_WESTSTRUCTURECOSTS',_c,true] Call SetNamespace;
['WFBE_WESTSTRUCTURETIMES',_t,true] Call SetNamespace;
['WFBE_WESTSTRUCTUREDISTANCES',_dis,true] Call SetNamespace;
['WFBE_WESTSTRUCTUREDIRECTIONS',_dir,true] Call SetNamespace;
['WFBE_WESTSTRUCTURESCRIPTS',_s,true] Call SetNamespace;

/* Defenses */
_n			= ["CDF_WarfareBMGNest_PK"];
_n set [count _n, "DSHkM_Mini_TriPod_CDF"];	
_n set [count _n, "DSHKM_CDF"];
_n set [count _n, "SearchLight_CDF"];
_n set [count _n, "AGS_CDF"];
_n set [count _n, "SPG9_CDF"];
_n set [count _n, "ZU23_CDF"];
_n set [count _n, "2b14_82mm_CDF"];
_n set [count _n, "D30_CDF"];
_n set [count _n, "Land_HBarrier3"];
_n set [count _n, "Land_HBarrier5"];
_n set [count _n, "Land_HBarrier_large"];
_n set [count _n, "Base_WarfareBBarrier5x"];
_n set [count _n, "Base_WarfareBBarrier10x"];
_n set [count _n, "Base_WarfareBBarrier10xTall"];
_n set [count _n, "MASH"];
_n set [count _n, "Land_fort_bagfence_long"];
_n set [count _n, "Land_fort_bagfence_corner"];
_n set [count _n, "Land_fort_bagfence_round"];
_n set [count _n, "Land_fortified_nest_small"];
_n set [count _n, "Land_fortified_nest_big"];
_n set [count _n, "Land_Fort_Watchtower"];
_n set [count _n, "Land_fort_rampart"];
_n set [count _n, "Land_fort_artillery_nest"];
_n set [count _n, "Hhedgehog_concreteBig"];
_n set [count _n, "Hedgehog"];
_n set [count _n, "Land_CamoNet_NATO"];
_n set [count _n, "Land_CamoNetVar_NATO"];
_n set [count _n, "Land_CamoNetB_NATO"];
_n set [count _n, "Sign_Danger"];
_n set [count _n, "HeliH"];
_n set [count _n, "Fort_RazorWire"];
_n set [count _n, "Land_Ind_IlluminantTower"];
_n set [count _n, "Land_Campfire"];
_n set [count _n, "RUOrdnanceBox"];
_n set [count _n, "RUVehicleBox"];
_n set [count _n, "RUBasicAmmunitionBox"];
_n set [count _n, "RUBasicWeaponsBox"];
_n set [count _n, "RULaunchersBox"];
_n set [count _n, "RUSpecialWeaponsBox"];

/* Class used for AI, AI will attempt to build those */
['WFBE_WESTDEFENSES_MG',['DSHKM_CDF'],true] Call SetNamespace;
['WFBE_WESTDEFENSES_GL',['AGS_CDF'],true] Call SetNamespace;
['WFBE_WESTDEFENSES_AAPOD',['ZU23_CDF'],true] Call SetNamespace;
['WFBE_WESTDEFENSES_ATPOD',['SPG9_CDF'],true] Call SetNamespace;
['WFBE_WESTDEFENSES_CANNON',['D30_CDF'],true] Call SetNamespace;
['WFBE_WESTDEFENSES_MASH',['MASH'],true] Call SetNamespace;

['WFBE_WESTDEFENSENAMES',_n,true] Call SetNamespace;