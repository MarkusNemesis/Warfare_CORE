Private ['_u'];

//--- US Light Vehicles.
_u 			= ['M1030_US_DES_EP1'];
_u set [count _u,'ATV_US_EP1'];
_u set [count _u,'HMMWV_DES_EP1'];
_u set [count _u,'HMMWV_M1035_DES_EP1'];
//_u set [count _u,'HMMWV_Terminal_EP1'];
_u set [count _u,'HMMWV_MK19_DES_EP1'];
_u set [count _u,'HMMWV_M998A2_SOV_DES_EP1'];
_u set [count _u,'HMMWV_M1151_M2_DES_EP1'];
_u set [count _u,'HMMWV_M998_crows_M2_DES_EP1'];
_u set [count _u,'HMMWV_M998_crows_MK19_DES_EP1'];
//_u set [count _u,'HMMWV_TOW_DES_EP1'];
_u set [count _u,'HMMWV_Avenger_DES_EP1'];
_u set [count _u,'HMMWV_Ambulance_DES_EP1'];
_u set [count _u,'MTVR_DES_EP1'];
_u set [count _u,'MtvrRepair_DES_EP1'];
_u set [count _u,'MtvrReammo_DES_EP1'];
_u set [count _u,'MtvrRefuel_DES_EP1'];
_u set [count _u,'MtvrSalvage_DES_EP1'];
if (('WFBE_SUPPLYSYSTEM' Call GetNamespace) == 0) then {_u set [count _u,'MtvrSupply_DES_EP1']};
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

_u