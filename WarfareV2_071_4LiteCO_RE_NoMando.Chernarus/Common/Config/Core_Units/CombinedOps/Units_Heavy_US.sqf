Private ['_u'];

//--- US Heavy Vehicles.
_u 			= ['AAV'];
// Markus
_u set [count _u,'M1128_MGS_EP1'];
/// Markus
_u set [count _u,'M2A2_EP1'];
_u set [count _u,'M2A3_EP1'];
_u set [count _u,'M1A1'];
_u set [count _u,'M1A1_uS_DES_EP1'];
_u set [count _u,'MLRS'];
_u set [count _u,'MLRS_DES_EP1'];
_u set [count _u,'M1A2_TUSK_MG'];
_u set [count _u,'M1A2_uS_TUSK_MG_EP1'];
_u set [count _u,'M6_EP1'];
if (paramDLCBAF) then {
	_u set [count _u,'BAF_FV510_W'];
	_u set [count _u,'BAF_FV510_D'];
};
if (modACE) then {
	_u set [count _u,'ACE_Stryker_RV_SLAT_D'];
	_u set [count _u,'ACE_M1A1HA_TUSK_DESERT'];
	_u set [count _u,'ACE_M1A1HA_TUSK_CSAMM_DESERT'];
	_u set [count _u,'ACE_Stryker_ICV_M2_SLAT'];
	_u set [count _u,'ACE_Stryker_RV_SLAT'];
	_u set [count _u,'ACE_Stryker_ICV_MK19_SLAT'];
	_u set [count _u,'ACE_Stryker_TOW_MG_Slat'];
	_u set [count _u,'ACE_Stryker_MGS_Slat'];
	_u set [count _u,'ACE_M113A3_Ambul'];
	_u set [count _u,'ACE_Vulcan'];
	_u set [count _u,'ACE_M113A3'];
	_u set [count _u,'ACE_M2A2_W'];
	_u set [count _u,'ACE_M2A3_W'];
	_u set [count _u,'ACE_M1A1_NATO'];
	_u set [count _u,'ACE_M1A1HA_TUSK'];
	_u set [count _u,'ACE_M1A1HA_TUSK_CSAMM'];
	_u set [count _u,'ACE_M6A1_W'];
};

_u