Private ["_n","_u"];

_n		= ["SmallTeam1"];
_u		= ["US_Soldier_TL_EP1"];
_u set [count _u, "US_Soldier_EP1"];
_u set [count _u, "US_Soldier_AR_EP1"];
_u set [count _u, "US_Soldier_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "SmallTeam2"];
_u		= ["US_Soldier_TL_EP1"];
_u set [count _u, "US_Soldier_AR_EP1"];
_u set [count _u, "US_Soldier_LAT_EP1"];
_u set [count _u, "US_Soldier_Medic_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "SmallTeam3"];
_u		= ["US_Soldier_TL_EP1"];
_u set [count _u, "US_Soldier_MG_EP1"];
_u set [count _u, "US_Soldier_AR_EP1"];
_u set [count _u, "US_Soldier_LAT_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "SmallVehTeam1"];
_u		= ["US_Soldier_TL_EP1"];
_u set [count _u, "HMMWV_Avenger_DES_EP1"];
_u set [count _u, "HMMWV_M1151_M2_DES_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "SmallVehTeam2"];
_u		= ["US_Soldier_TL_EP1"];
//_u set [count _u, "HMMWV_TOW_DES_EP1"];
_u set [count _u, "M1126_ICV_mk19_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "SmallVehTeam3"];
_u		= ["US_Soldier_TL_EP1"];
_u set [count _u, "HMMWV_Avenger_DES_EP1"];
_u set [count _u, "HMMWV_M998_crows_MK19_DES_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumTeam1"];
_u		= ["US_Soldier_TL_EP1"];
_u set [count _u, "US_Soldier_AR_EP1"];
_u set [count _u, "US_Soldier_Medic_EP1"];
_u set [count _u, "US_Soldier_AA_EP1"];
_u set [count _u, "US_Soldier_AA_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumTeam2"];
_u		= ["US_Soldier_TL_EP1"];
_u set [count _u, "US_Soldier_AA_EP1"];
_u set [count _u, "US_Soldier_AA_EP1"];
_u set [count _u, "US_Soldier_LAT_EP1"];
_u set [count _u, "US_Soldier_AT_EP1"];
_u set [count _u, "US_Soldier_AR_EP1"];
_u set [count _u, "US_Soldier_MG_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumTeam3"];
_u		= ["US_Soldier_Sniper_EP1"];
_u set [count _u, "US_Soldier_Marksman_EP1"];
_u set [count _u, "US_Soldier_Marksman_EP1"];
_u set [count _u, "US_Soldier_SniperH_EP1"];
_u set [count _u, "US_Soldier_SniperH_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumVehTeam1"];
_u		= ["US_Soldier_TL_EP1"];
_u set [count _u, "HMMWV_Avenger_DES_EP1"];
_u set [count _u, "M2A3_EP1"];
_u set [count _u, "M1126_ICV_M2_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumVehTeam2"];
_u		= ["US_Soldier_TL_EP1"];
_u set [count _u, "M1A1_US_DES_EP1"];
_u set [count _u, "M1A1_US_DES_EP1"];
_u set [count _u, "HMMWV_Ambulance_DES_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumVehTeam3"];
_u		= ["US_Soldier_TL_EP1"];
_u set [count _u, "M1126_ICV_M2_EP1"];
_u set [count _u, "HMMWV_M998_crows_M2_DES_EP1"];
_u set [count _u, "M1A1_US_DES_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeTeam1"];
_u		= ["US_Soldier_HAT_EP1"];
_u set [count _u, "US_Soldier_AT_EP1"];
_u set [count _u, "US_Soldier_HAT_EP1"];
_u set [count _u, "US_Soldier_HAT_EP1"];
_u set [count _u, "US_Soldier_HAT_EP1"];
_u set [count _u, "US_Soldier_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeTeam2"];
_u		= ["US_Delta_Force_EP1"];
_u set [count _u, "US_Delta_Force_AR_EP1"];
_u set [count _u, "US_Delta_Force_SD_EP1"];
_u set [count _u, "US_Delta_Force_Assault_EP1"];
_u set [count _u, "US_Delta_Force_Marksman_EP1"];
_u set [count _u, "US_Delta_Force_M14_EP1"];
_u set [count _u, "US_Delta_Force_MG_EP1"];
_u set [count _u, "US_Delta_Force_Medic_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeTeam3"];
_u		= ["US_Soldier_TL_EP1"];
_u set [count _u, "US_Soldier_AA_EP1"];
_u set [count _u, "US_Soldier_AA_EP1"];
_u set [count _u, "US_Soldier_Medic_EP1"];
_u set [count _u, "US_Soldier_GL_EP1"];
_u set [count _u, "US_Soldier_Sniper_EP1"];
_u set [count _u, "US_Soldier_AT_EP1"];
_u set [count _u, "US_Soldier_MG_EP1"];
_u set [count _u, "US_Soldier_AR_EP1"];
_u set [count _u, "US_Soldier_LAT_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeVehTeam1"];
_u		= ["US_Soldier_TL_EP1"];
_u set [count _u, "M1A2_US_TUSK_MG_EP1"];
_u set [count _u, "M1A2_US_TUSK_MG_EP1"];
_u set [count _u, "M1A2_US_TUSK_MG_EP1"];
_u set [count _u, "M1A2_US_TUSK_MG_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeVehTeam2"];
_u		= ["US_Soldier_TL_EP1"];
_u set [count _u, "M1A2_US_TUSK_MG_EP1"];
_u set [count _u, "M1A2_US_TUSK_MG_EP1"];
_u set [count _u, "MLRS_DES_EP1"];
_u set [count _u, "M1A2_US_TUSK_MG_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeVehTeam3"];
_u		= ["US_Soldier_TL_EP1"];
_u set [count _u, "M1A2_US_TUSK_MG_EP1"];
_u set [count _u, "M1A2_US_TUSK_MG_EP1"];
_u set [count _u, "M1A2_US_TUSK_MG_EP1"];
_u set [count _u, "M6_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

//--- AA Units used by towns occupation in case of 'air assault' only.
_n set [count _n, "SmallAATeam"];
_u		= ["US_Soldier_TL_EP1"];
_u set [count _u, "US_Soldier_AA_EP1"];
_u set [count _u, "US_Soldier_AA_EP1"];
_u set [count _u, "US_Soldier_AA_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumAATeam"];
_u		= ["US_Soldier_TL_EP1"];
_u set [count _u, "US_Soldier_AA_EP1"];
_u set [count _u, "US_Soldier_AA_EP1"];
_u set [count _u, "HMMWV_Avenger_DES_EP1"];
_u set [count _u, "HMMWV_Avenger_DES_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeAATeam"];
_u		= ["US_Soldier_TL_EP1"];
_u set [count _u, "US_Soldier_AA_EP1"];
_u set [count _u, "US_Soldier_AA_EP1"];
_u set [count _u, "US_Soldier_AA_EP1"];
_u set [count _u, "M2A3_EP1"];
_u set [count _u, "M6_EP1"];
_u set [count _u, "M6_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

diag_log Format ["[WFBE (INIT)][frameno:%1 | ticktime:%2] Occupation_US: Initialization - [Done]",diag_frameno,diag_tickTime];