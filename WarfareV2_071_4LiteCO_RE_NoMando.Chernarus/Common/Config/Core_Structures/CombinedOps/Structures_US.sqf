Private ['_c','_count','_d','_dir','_dis','_n','_s','_t','_v'];

/* Root Definition */
WESTHQ = if (WF_Camo) then {"LAV25_HQ_unfolded"} else {"LAV25_HQ_unfolded"};
WESTBAR = if (WF_Camo) then {"USMC_WarfareBBarracks"} else {"US_WarfareBBarracks_EP1"};
WESTLVF = if (WF_Camo) then {"USMC_WarfareBLightFactory"} else {"US_WarfareBLightFactory_EP1"};
WESTCC = if (WF_Camo) then {"USMC_WarfareBUAVterminal"} else {"US_WarfareBUAVterminal_EP1"};
WESTHEAVY = if (WF_Camo) then {"USMC_WarfareBHeavyFactory"} else {"US_WarfareBHeavyFactory_EP1"};
WESTAIR = if (WF_Camo) then {"USMC_WarfareBAircraftFactory"} else {"US_WarfareBAircraftFactory_EP1"};
WESTSP = if (WF_Camo) then {"USMC_WarfareBVehicleServicePoint"} else {"US_WarfareBVehicleServicePoint_EP1"};
WESTAAR = if (WF_Camo) then {"USMC_WarfareBAntiAirRadar"} else {"US_WarfareBAntiAirRadar_EP1"};

/* Flag Textures */
['WFBE_WESTFLAG','\Ca\ca_e\Data\flag_us_co.paa',true] Call SetNamespace;

/* Mash used after being deployed */
['WFBE_WESTFARP','Camp_EP1',true] Call SetNamespace;

/* Construction Crates */
['WFBE_WESTCONSTRUCTIONSITE','US_WarfareBContructionSite_EP1',true] Call SetNamespace;

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
_d set [count _d, localize "STR_WF_CommandCenter_USMC"];
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
_d set [count _d, localize "STR_WF_AircraftFactory"];
_c set [count _c, 4400];
_t set [count _t, if (WF_Debug) then {1} else {150}];
_s set [count _s, "SmallSite"];
_dis set [count _dis, 31];
_dir set [count _dir, 90];

_v set [count _v, "ServicePoint"];
_n set [count _n, WESTSP];
_d set [count _d, localize "STR_WF_MAIN_ServicePoint"];
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

['WFBE_WESTMHQNAME',if (WF_Camo) then {'LAV25_HQ'} else {'LAV25_HQ'},true] Call SetNamespace;

['WFBE_WESTSTRUCTURES',_v,true] Call SetNamespace;
['WFBE_WESTSTRUCTURENAMES',_n,true] Call SetNamespace;
['WFBE_WESTSTRUCTUREDESCRIPTIONS',_d,true] Call SetNamespace;
['WFBE_WESTSTRUCTURECOSTS',_c,true] Call SetNamespace;
['WFBE_WESTSTRUCTURETIMES',_t,true] Call SetNamespace;
['WFBE_WESTSTRUCTUREDISTANCES',_dis,true] Call SetNamespace;
['WFBE_WESTSTRUCTUREDIRECTIONS',_dir,true] Call SetNamespace;
['WFBE_WESTSTRUCTURESCRIPTS',_s,true] Call SetNamespace;

/* Defenses */
_n			= ["WarfareBMGNest_M240_US_EP1"];
_n set [count _n, "M2HD_mini_TriPod_US_EP1"];
_n set [count _n, "SearchLight_US_EP1"];
_n set [count _n, "M2StaticMG_US_EP1"];
if (paramDLCBAF) then {
	_n set [count _n, "BAF_GPMG_Minitripod_W"];
	_n set [count _n, "BAF_GMG_Tripod_W"];
	_n set [count _n, "BAF_L2A1_Minitripod_W"];
	_n set [count _n, "BAF_L2A1_Tripod_W"];
};
_n set [count _n, "MK19_TriPod_US_EP1"];
_n set [count _n, "TOW_TriPod_US_EP1"];
_n set [count _n, "Stinger_Pod_US_EP1"];
_n set [count _n, "M252_US_EP1"];
_n set [count _n, "M119_US_EP1"];
_n set [count _n, "Land_HBarrier3"];
_n set [count _n, "Land_HBarrier5"];
_n set [count _n, "Land_HBarrier_large"];
_n set [count _n, "US_WarfareBBarrier5x_EP1"];
_n set [count _n, "US_WarfareBBarrier10x_EP1"];
_n set [count _n, "US_WarfareBBarrier10xTall_EP1"];
_n set [count _n, "MASH_EP1"];
_n set [count _n, "Land_fort_bagfence_long"];
_n set [count _n, "Land_fort_bagfence_corner"];
_n set [count _n, "Land_fort_bagfence_round"];
_n set [count _n, if (WF_Camo) then {"Land_fortified_nest_small"} else {"Land_fortified_nest_small_EP1"}];
_n set [count _n, if (WF_Camo) then {"Land_fort_rampart"} else {"Land_fort_rampart_EP1"}];
_n set [count _n, if (WF_Camo) then {"Land_fort_artillery_nest"} else {"Land_fort_artillery_nest_EP1"}];
_n set [count _n, "Hhedgehog_concreteBig"];
_n set [count _n, "Hedgehog_EP1"];
_n set [count _n, if (WF_Camo) then {"Land_CamoNet_NATO"} else {"Land_CamoNet_NATO_EP1"}];
_n set [count _n, if (WF_Camo) then {"Land_CamoNetVar_NATO"} else {"Land_CamoNetVar_NATO_EP1"}];
_n set [count _n, if (WF_Camo) then {"Land_CamoNetB_NATO"} else {"Land_CamoNetB_NATO_EP1"}];
_n set [count _n, "Sign_Danger"];
_n set [count _n, "HeliH"];
_n set [count _n, "Fort_RazorWire"];
_n set [count _n, "Land_Ind_IlluminantTower"];
//_n set [count _n, "Concrete_Wall_EP1"];// Markus - Remove concrete walls.
_n set [count _n, "Land_Campfire"];
_n set [count _n, "USOrdnanceBox_EP1"];
_n set [count _n, "USVehicleBox_EP1"];
_n set [count _n, "USBasicAmmunitionBox_EP1"];
_n set [count _n, "USBasicWeapons_EP1"];
_n set [count _n, "USLaunchers_EP1"];
_n set [count _n, "USSpecialWeapons_EP1"];
// Markus - Add additional strategic objects
_n set [count _n, 'Land_GuardShed'];
_n set [count _n, 'Land_BarGate2'];
_n set [count _n, 'Land_Toilet'];
//_n set [count _n, 'TargetFakeTank_Lockable_EP1']; // Markus - Get a bit of Ruse india?
/// Markus

/* Class used for AI, AI will attempt to build those */
['WFBE_WESTDEFENSES_MG',['M2StaticMG_US_EP1'],true] Call SetNamespace;
['WFBE_WESTDEFENSES_GL',['MK19_TriPod_US_EP1'],true] Call SetNamespace;
['WFBE_WESTDEFENSES_AAPOD',['Stinger_Pod_US_EP1'],true] Call SetNamespace;
['WFBE_WESTDEFENSES_ATPOD',['TOW_TriPod_US_EP1'],true] Call SetNamespace;
['WFBE_WESTDEFENSES_CANNON',['M119_US_EP1'],true] Call SetNamespace;
['WFBE_WESTDEFENSES_MASH',['MASH_EP1'],true] Call SetNamespace;

['WFBE_WESTDEFENSENAMES',_n,true] Call SetNamespace;