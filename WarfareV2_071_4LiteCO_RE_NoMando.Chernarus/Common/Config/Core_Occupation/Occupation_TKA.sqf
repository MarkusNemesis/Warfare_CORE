Private ["_n","_u"];

_n		= ["SmallTeam1"];
_u		= ["TK_Soldier_SL_EP1"];
_u set [count _u, "TK_Soldier_MG_EP1"];
_u set [count _u, "TK_Soldier_AT_EP1"];
_u set [count _u, "TK_Soldier_EP1"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "SmallTeam2"];
_u		= ["TK_Soldier_SL_EP1"];
_u set [count _u, "TK_Soldier_LAT_EP1"];
_u set [count _u, "TK_Soldier_Spotter_EP1"];
_u set [count _u, "TK_Soldier_AR_EP1"];
_u set [count _u, "TK_Soldier_GL_EP1"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "SmallTeam3"];
_u		= ["TK_Soldier_SL_EP1"];
_u set [count _u, "TK_Soldier_MG_EP1"];
_u set [count _u, "TK_Soldier_GL_EP1"];
_u set [count _u, "TK_Soldier_AT_EP1"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "SmallVehTeam1"];
_u		= ["TK_Soldier_SL_EP1"];
_u set [count _u, "LandRover_MG_TK_EP1"];
_u set [count _u, "BTR60_TK_EP1"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "SmallVehTeam2"];
_u		= ["TK_Soldier_SL_EP1"];
_u set [count _u, "BTR60_TK_EP1"];
_u set [count _u, "BRDM2_TK_EP1"];
_u set [count _u, "BRDM2_ATGM_TK_EP1"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "SmallVehTeam3"];
_u		= ["TK_Soldier_SL_EP1"];
_u set [count _u, "UAZ_AGS30_TK_EP1"];
_u set [count _u, "BRDM2_TK_EP1"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumTeam1"];
_u		= ["TK_Soldier_SL_EP1"];
_u set [count _u, "TK_Soldier_AA_EP1"];
_u set [count _u, "TK_Soldier_LAT_EP1"];
_u set [count _u, "TK_Soldier_AT_EP1"];
_u set [count _u, "TK_Soldier_EP1"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumTeam2"];
_u		= ["TK_Special_Forces_TL_EP1"];
_u set [count _u, "TK_Soldier_Medic_EP1"];
_u set [count _u, "TK_Soldier_HAT_EP1"];
_u set [count _u, "TK_Soldier_HAT_EP1"];
_u set [count _u, "TK_Special_Forces_EP1"];
_u set [count _u, "TK_Special_Forces_EP1"];
_u set [count _u, "TK_Special_Forces_MG_EP1"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumTeam3"];
_u		= ["TK_Special_Forces_TL_EP1"];
_u set [count _u, "TK_Soldier_Medic_EP1"];
_u set [count _u, "TK_Soldier_SniperH_EP1"];
_u set [count _u, "TK_Soldier_Sniper_Night_EP1"];
_u set [count _u, "TK_Soldier_Night_1_EP1"];
_u set [count _u, "TK_Soldier_Night_2_EP1"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumVehTeam1"];
_u		= ["TK_Soldier_SL_EP1"];
_u set [count _u, "BMP2_TK_EP1"];
_u set [count _u, "BMP2_TK_EP1"];
_u set [count _u, "BTR60_TK_EP1"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumVehTeam2"];
_u		= ["TK_Soldier_SL_EP1"];
_u set [count _u, "T72_TK_EP1"];
_u set [count _u, "T72_TK_EP1"];
_u set [count _u, "M113Ambul_TK_EP1"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumVehTeam3"];
_u		= ["TK_Soldier_SL_EP1"];
_u set [count _u, "BMP2_TK_EP1"];
_u set [count _u, "Ural_ZU23_TK_EP1"];
_u set [count _u, "T72_TK_EP1"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeTeam1"];
_u		= ["TK_Soldier_HAT_EP1"];
_u set [count _u, "TK_Soldier_HAT_EP1"];
_u set [count _u, "TK_Soldier_HAT_EP1"];
_u set [count _u, "TK_Soldier_AT_EP1"];
_u set [count _u, "TK_Soldier_EP1"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeTeam2"];
_u		= ["TK_Special_Forces_TL_EP1"];
_u set [count _u, "TK_Special_Forces_EP1"];
_u set [count _u, "TK_Special_Forces_EP1"];
_u set [count _u, "TK_Special_Forces_EP1"];
_u set [count _u, "TK_Special_Forces_MG_EP1"];
_u set [count _u, "TK_Special_Forces_MG_EP1"];
_u set [count _u, "TK_Special_Forces_MG_EP1"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeTeam3"];
_u		= ["TK_Soldier_SL_EP1"];
_u set [count _u, "TK_Soldier_MG_EP1"];
_u set [count _u, "TK_Soldier_AT_EP1"];
_u set [count _u, "TK_Soldier_LAT_EP1"];
_u set [count _u, "TK_Soldier_Spotter_EP1"];
_u set [count _u, "TK_Soldier_AR_EP1"];
_u set [count _u, "TK_Soldier_GL_EP1"];
_u set [count _u, "TK_Soldier_EP1"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeVehTeam1"];
_u		= ["TK_Soldier_SL_EP1"];
_u set [count _u, "T55_TK_EP1"];
_u set [count _u, "T72_TK_EP1"];
_u set [count _u, "T72_TK_EP1"];
_u set [count _u, "T72_TK_EP1"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeVehTeam2"];
_u		= ["TK_Soldier_SL_EP1"];
_u set [count _u, "T55_TK_EP1"];
_u set [count _u, "T55_TK_EP1"];
_u set [count _u, "T72_TK_EP1"];
_u set [count _u, "ZSU_TK_EP1"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeVehTeam3"];
_u		= ["TK_Soldier_SL_EP1"];
_u set [count _u, "T72_TK_EP1"];
_u set [count _u, "T72_TK_EP1"];
_u set [count _u, "T72_TK_EP1"];
_u set [count _u, "ZSU_TK_EP1"];
_u set [count _u, "T72_TK_EP1"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

//--- AA Units used by towns occupation in case of 'air assault' only.
_n set [count _n, "SmallAATeam"];
_u		= ["TK_Soldier_SL_EP1"];
_u set [count _u, "TK_Soldier_AA_EP1"];
_u set [count _u, "TK_Soldier_AA_EP1"];
_u set [count _u, "TK_Soldier_AA_EP1"];
_u set [count _u, "TK_Soldier_AA_EP1"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumAATeam"];
_u		= ["TK_Soldier_SL_EP1"];
_u set [count _u, "TK_Soldier_AA_EP1"];
_u set [count _u, "TK_Soldier_AA_EP1"];
_u set [count _u, "TK_Soldier_AA_EP1"];
_u set [count _u, "Ural_ZU23_TK_EP1"];
_u set [count _u, "Ural_ZU23_TK_EP1"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeAATeam"];
_u		= ["TK_Soldier_SL_EP1"];
_u set [count _u, "TK_Soldier_AA_EP1"];
_u set [count _u, "TK_Soldier_AA_EP1"];
_u set [count _u, "TK_Soldier_AA_EP1"];
_u set [count _u, "TK_Soldier_AA_EP1"];
_u set [count _u, "TK_Soldier_AA_EP1"];
_u set [count _u, "ZSU_TK_EP1"];
_u set [count _u, "ZSU_TK_EP1"];
_u set [count _u, "BMP2_TK_EP1"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

diag_log Format ["[WFBE (INIT)][frameno:%1 | ticktime:%2] Occupation_TKA: Initialization - [Done]",diag_frameno,diag_tickTime];