Private ['_c','_count','_d','_dir','_dis','_n','_s','_t','_v'];

/* Root Definition */
EASTHQ = "BMP2_HQ_INS_unfolded";
EASTBAR = "Ins_WarfareBBarracks";
EASTLVF = "Ins_WarfareBLightFactory";
EASTCC = "INS_WarfareBUAVterminal";
EASTHEAVY = "Ins_WarfareBHeavyFactory";
EASTAIR = "INS_WarfareBAircraftFactory";
EASTSP = "INS_WarfareBVehicleServicePoint";
EASTAAR = "INS_WarfareBAntiAirRadar";

/* Flag Textures */
['WFBE_EASTFLAG','\Ca\Data\flag_chdkz_co.paa',true] Call SetNamespace;

/* Mash used after being deployed */
['WFBE_EASTFARP','CampEast',true] Call SetNamespace;

/* Construction Crates */
['WFBE_EASTCONSTRUCTIONSITE','Ins_WarfareBContructionSite',true] Call SetNamespace;

/* Structures */
_v			= ["Headquarters"];
_n			= [EASTHQ];
_d			= [getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName")];
_c			= [('WFBE_HQDEPLOYPRICE' Call GetNamespace)];
_t			= [if (WF_Debug) then {1} else {30}];
_s			= ["HQSite"];
_dis		= [15];
_dir		= [0];

_v set [count _v, "Barracks"];
_n set [count _n, EASTBAR];
_d set [count _d, getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName")];
_c set [count _c, 200];
_t set [count _t, if (WF_Debug) then {1} else {70}];
_s set [count _s, "SmallSite"];
_dis set [count _dis, 18];
_dir set [count _dir, 90];

_v set [count _v, "Light"];
_n set [count _n, EASTLVF];
_d set [count _d, getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName")];
_c set [count _c, 600];
_t set [count _t, if (WF_Debug) then {1} else {90}];
_s set [count _s, "MediumSite"];
_dis set [count _dis, 25];
_dir set [count _dir, 90];

_v set [count _v, "CommandCenter"];
_n set [count _n, EASTCC];
_d set [count _d, localize "STR_WF_CommandCenter_RU"];
_c set [count _c, 1200];
_t set [count _t, if (WF_Debug) then {1} else {110}];
_s set [count _s, "SmallSite"];

_dis set [count _dis, 20];
_dir set [count _dir, 90];

_v set [count _v, "Heavy"];
_n set [count _n, EASTHEAVY];
_d set [count _d, getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName")];
_c set [count _c, 2800];
_t set [count _t, if (WF_Debug) then {1} else {130}];
_s set [count _s, "MediumSite"];
_dis set [count _dis, 25];
_dir set [count _dir, 90];

_v set [count _v, "Aircraft"];
_n set [count _n, EASTAIR];
_d set [count _d, getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName")];
_c set [count _c, 4400];
_t set [count _t, if (WF_Debug) then {1} else {150}];
_s set [count _s, "SmallSite"];
_dis set [count _dis, 21];
_dir set [count _dir, 90];

_v set [count _v, "ServicePoint"];
_n set [count _n, EASTSP];
_d set [count _d, getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName")];
_c set [count _c, 700];
_t set [count _t, if (WF_Debug) then {1} else {70}];
_s set [count _s, "SmallSite"];
_dis set [count _dis, 21];
_dir set [count _dir, 90];

if (paramAARadar) then {
	_v set [count _v, "AARadar"];
	_n set [count _n, EASTAAR];
	_d set [count _d, getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName")];
	_c set [count _c, 3200];
	_t set [count _t, if (WF_Debug) then {1} else {280}];
	_s set [count _s, "MediumSite"];
	_dis set [count _dis, 21];
	_dir set [count _dir, 90];
};

for [{_count = count _v - 1},{_count >= 0},{_count = _count - 1}] do {
	[Format["WFBE_EAST%1TYPE",_v select _count],_count,true] Call SetNamespace;
};

['WFBE_EASTMHQNAME','BMP2_HQ_INS',true] Call SetNamespace;

['WFBE_EASTSTRUCTURES',_v,true] Call SetNamespace;
['WFBE_EASTSTRUCTURENAMES',_n,true] Call SetNamespace;
['WFBE_EASTSTRUCTUREDESCRIPTIONS',_d,true] Call SetNamespace;
['WFBE_EASTSTRUCTURECOSTS',_c,true] Call SetNamespace;
['WFBE_EASTSTRUCTURETIMES',_t,true] Call SetNamespace;
['WFBE_EASTSTRUCTUREDISTANCES',_dis,true] Call SetNamespace;
['WFBE_EASTSTRUCTUREDIRECTIONS',_dir,true] Call SetNamespace;
['WFBE_EASTSTRUCTURESCRIPTS',_s,true] Call SetNamespace;

/* Defenses */
_n			= ["Ins_WarfareBMGNest_PK"];
_n set [count _n, "SearchLight_INS"];
_n set [count _n, "DSHkM_Mini_TriPod"];
_n set [count _n, "DSHKM_Ins"];
_n set [count _n, "AGS_Ins"];
_n set [count _n, "SPG9_Ins"];
_n set [count _n, "ZU23_Ins"];
_n set [count _n, "2b14_82mm_INS"];
_n set [count _n, "D30_Ins"];
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
_n set [count _n, "Land_CamoNet_EAST"];
_n set [count _n, "Land_CamoNetVar_EAST"];
_n set [count _n, "Land_CamoNetB_EAST"];
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
['WFBE_EASTDEFENSES_MG',['DSHKM_Ins'],true] Call SetNamespace;
['WFBE_EASTDEFENSES_GL',['AGS_Ins'],true] Call SetNamespace;
['WFBE_EASTDEFENSES_AAPOD',['ZU23_Ins'],true] Call SetNamespace;
['WFBE_EASTDEFENSES_ATPOD',[/*'SPG9_Ins'*/],true] Call SetNamespace;
['WFBE_EASTDEFENSES_CANNON',['D30_Ins'],true] Call SetNamespace;
['WFBE_EASTDEFENSES_MASH',['MASH'],true] Call SetNamespace;

['WFBE_EASTDEFENSENAMES',_n,true] Call SetNamespace;