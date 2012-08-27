Private ['_u'];

//--- US Light Vehicles.
_u 			= ['MMT_USMC'];
_u set [count _u,'M1030'];
_u set [count _u,'M1030_US_DES_EP1'];
_u set [count _u,'ATV_US_EP1'];
_u set [count _u,'Zodiac'];
_u set [count _u,'HMMWV_DES_EP1'];
_u set [count _u,'HMMWV_M1035_DES_EP1'];
// Markus - Remove the pointless Terminal.
//_u set [count _u,'HMMWV_Terminal_EP1'];
/// Markus
_u set [count _u,'HMMWV_MK19_DES_EP1'];
_u set [count _u,'HMMWV_M998A2_SOV_DES_EP1'];
_u set [count _u,'HMMWV_M1151_M2_DES_EP1'];
_u set [count _u,'HMMWV_M998_crows_M2_DES_EP1'];
_u set [count _u,'HMMWV_M998_crows_MK19_DES_EP1'];
// Markus - Remove the TOW Humvee
// _u set [count _u,'HMMWV_TOW_DES_EP1'];
/// Markus
_u set [count _u,'HMMWV_Avenger_DES_EP1'];
_u set [count _u,'HMMWV_Ambulance_DES_EP1'];
_u set [count _u,'HMMWV'];
_u set [count _u,'HMMWV_M2'];
_u set [count _u,'HMMWV_Armored'];
_u set [count _u,'HMMWV_MK19'];
// Markus - Remove the TOW humvee
//_u set [count _u,'HMMWV_TOW'];
/// Markus
_u set [count _u,'HMMWV_Avenger'];
_u set [count _u,'HMMWV_Ambulance'];
_u set [count _u,'MTVR_DES_EP1'];
_u set [count _u,'MtvrRepair_DES_EP1'];
_u set [count _u,'MtvrReammo_DES_EP1'];
_u set [count _u,'MtvrRefuel_DES_EP1'];
_u set [count _u,'MtvrSalvage_DES_EP1'];
// Markus - Put the Strykers into light factory
_u set [count _u,'M1126_ICV_M2_EP1'];
_u set [count _u,'M1126_ICV_mk19_EP1'];
_u set [count _u,'M1129_MC_EP1'];
_u set [count _u,'M1135_ATGMV_EP1'];
_u set [count _u,'M1133_MEV_EP1'];
/// Markus
if (('WFBE_SUPPLYSYSTEM' Call GetNamespace) == 0) then {_u set [count _u,'MtvrSupply_DES_EP1']};
_u set [count _u,'MTVR'];
_u set [count _u,'MtvrRepair'];
_u set [count _u,'WarfareReammoTruck_USMC'];
_u set [count _u,'MtvrRefuel'];
_u set [count _u,'WarfareSalvageTruck_USMC'];
if (('WFBE_SUPPLYSYSTEM' Call GetNamespace) == 0) then {_u set [count _u,'WarfareSupplyTruck_USMC']};
_u set [count _u,'RHIB'];
_u set [count _u,'RHIB2Turret'];
_u set [count _u,'LAV25'];
if (paramDLCBAF) then {
	_u set [count _u,'BAF_ATV_W'];
	_u set [count _u,'BAF_Offroad_W'];
	_u set [count _u,'BAF_Jackal2_GMG_W'];
	_u set [count _u,'BAF_Jackal2_L2A1_W'];
	_u set [count _u,'BAF_ATV_D'];
	_u set [count _u,'BAF_Offroad_D'];
	_u set [count _u,'BAF_Jackal2_GMG_D'];
	_u set [count _u,'BAF_Jackal2_L2A1_D'];
};
if (modACE) then {
	_u set [count _u,'ACE_ATV_Honda'];
	_u set [count _u,'ACE_HMMWV_MK19_USARMY'];
	_u set [count _u,'ACE_HMMWV_USARMY'];
	_u set [count _u,'ACE_HMMWV_GMV'];
	_u set [count _u,'ACE_HMMWV_GMV_MK19'];
	_u set [count _u,'ACE_HMMWV_M2_USARMY'];
	_u set [count _u,'ACE_HMMWV_TOW_USARMY'];
	_u set [count _u,'ACE_HMMWV_Ambulance_USARMY'];
	_u set [count _u,'ACE_Truck5tOpen'];
	_u set [count _u,'ACE_Truck5t'];
	_u set [count _u,'ACE_Truck5tMGOpen'];
	_u set [count _u,'ACE_Truck5tMG'];
	_u set [count _u,'ACE_Truck5tRepair'];
	_u set [count _u,'ACE_Truck5tReammo'];
	_u set [count _u,'ACE_Truck5tRefuel'];
};

_u