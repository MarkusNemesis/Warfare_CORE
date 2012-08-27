Private ["_n","_u"];

_n		= ["SmallTeam1"];
_u		= ["Ins_Soldier_CO"];
_u set [count _u, "Ins_Soldier_MG"];
_u set [count _u, "Ins_Soldier_AT"];
_u set [count _u, "Ins_Soldier_1"];
_u set [count _u, "Ins_Soldier_2"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "SmallTeam2"];
_u		= ["Ins_Soldier_CO"];
_u set [count _u, "Ins_Soldier_AT"];
_u set [count _u, "Ins_Soldier_Sniper"];
_u set [count _u, "Ins_Soldier_AR"];
_u set [count _u, "Ins_Soldier_GL"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "SmallTeam3"];
_u		= ["Ins_Soldier_CO"];
_u set [count _u, "Ins_Soldier_MG"];
_u set [count _u, "Ins_Soldier_MG"];
_u set [count _u, "Ins_Soldier_GL"];
_u set [count _u, "Ins_Soldier_AT"];
_u set [count _u, "Ins_Soldier_AT"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "SmallVehTeam1"];
_u		= ["Ins_Soldier_CO"];
_u set [count _u, "BRDM2_INS"];
_u set [count _u, "BRDM2_ATGM_INS"];
_u set [count _u, "UAZ_MG_INS"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "SmallVehTeam2"];
_u		= ["Ins_Soldier_CO"];
_u set [count _u, "Ural_ZU23_INS"];
_u set [count _u, "BRDM2_ATGM_INS"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "SmallVehTeam3"];
_u		= ["Ins_Soldier_CO"];
_u set [count _u, "UAZ_AGS30_INS"];
_u set [count _u, "UAZ_SPG9_INS"];
_u set [count _u, "Ural_ZU23_INS"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumTeam1"];
_u		= ["Ins_Soldier_CO"];
_u set [count _u, "Ins_Soldier_AA"];
_u set [count _u, "Ins_Soldier_AT"];
_u set [count _u, "Ins_Soldier_AT"];
_u set [count _u, "Ins_Soldier_1"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumTeam2"];
_u		= ["Ins_Soldier_CO"];
_u set [count _u, "Ins_Soldier_AA"];
_u set [count _u, "Ins_Soldier_AA"];
_u set [count _u, "Ins_Soldier_AT"];
_u set [count _u, "Ins_Soldier_AT"];
_u set [count _u, "Ins_Soldier_AT"];
_u set [count _u, "Ins_Soldier_MG"];
_u set [count _u, "Ins_Soldier_AR"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumTeam3"];
_u		= ["Ins_Soldier_CO"];
_u set [count _u, "Ins_Soldier_MG"];
_u set [count _u, "Ins_Soldier_AT"];
_u set [count _u, "Ins_Soldier_Sniper"];
_u set [count _u, "Ins_Soldier_Sniper"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumVehTeam1"];
_u		= ["Ins_Soldier_CO"];
_u set [count _u, "Ural_ZU23_INS"];
_u set [count _u, "BMP2_INS"];
_u set [count _u, "ZSU_INS"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumVehTeam2"];
_u		= ["Ins_Soldier_CO"];
_u set [count _u, "T72_INS"];
_u set [count _u, "T72_INS"];
_u set [count _u, "BMP2_Ambul_INS"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumVehTeam3"];
_u		= ["Ins_Soldier_CO"];
_u set [count _u, "ZSU_INS"];
_u set [count _u, "BMP2_INS"];
_u set [count _u, "T72_INS"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeTeam1"];
_u		= ["Ins_Soldier_AT"];
_u set [count _u, "Ins_Soldier_AT"];
_u set [count _u, "Ins_Soldier_AT"];
_u set [count _u, "Ins_Soldier_AT"];
_u set [count _u, "Ins_Soldier_AT"];
_u set [count _u, "Ins_Soldier_Medic"];
_u set [count _u, "Ins_Soldier_1"];
_u set [count _u, "Ins_Soldier_AA"];
_u set [count _u, "Ins_Soldier_AA"];
_u set [count _u, "Ins_Soldier_AT"];
_u set [count _u, "Ins_Soldier_1"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeTeam2"];
_u		= ["Ins_Soldier_CO"];
_u set [count _u, "Ins_Soldier_MG"];
_u set [count _u, "Ins_Soldier_AT"];
_u set [count _u, "Ins_Soldier_AT"];
_u set [count _u, "Ins_Soldier_Medic"];
_u set [count _u, "Ins_Soldier_AA"];
_u set [count _u, "Ins_Soldier_1"];
_u set [count _u, "Ins_Soldier_AT"];
_u set [count _u, "Ins_Soldier_GL"];
_u set [count _u, "Ins_Soldier_1"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeTeam3"];
_u		= ["Ins_Soldier_CO"];
_u set [count _u, "Ins_Soldier_MG"];
_u set [count _u, "Ins_Soldier_AT"];
_u set [count _u, "Ins_Soldier_AT"];
_u set [count _u, "Ins_Soldier_AT"];
_u set [count _u, "Ins_Soldier_AA"];
_u set [count _u, "Ins_Soldier_AA"];
_u set [count _u, "Ins_Soldier_Sniper"];
_u set [count _u, "Ins_Soldier_AR"];
_u set [count _u, "Ins_Soldier_GL"];
_u set [count _u, "Ins_Soldier_1"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeVehTeam1"];
_u		= ["Ins_Soldier_CO"];
_u set [count _u, "T72_INS"];
_u set [count _u, "T72_INS"];
_u set [count _u, "T72_INS"];
_u set [count _u, "T72_INS"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeVehTeam2"];
_u		= ["Ins_Soldier_CO"];
_u set [count _u, "T72_INS"];
_u set [count _u, "T72_INS"];
_u set [count _u, "ZSU_INS"];
_u set [count _u, "BMP2_INS"];
_u set [count _u, "T72_INS"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeVehTeam3"];
_u		= ["Ins_Soldier_CO"];
_u set [count _u, "T72_INS"];
_u set [count _u, "T72_INS"];
_u set [count _u, "T72_INS"];
_u set [count _u, "ZSU_INS"];
_u set [count _u, "GRAD_INS"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

//--- AA Units used by towns occupation in case of 'air assault' only.
_n set [count _n, "SmallAATeam"];
_u		= ["Ins_Soldier_CO"];
_u set [count _u, "Ins_Soldier_AA"];
_u set [count _u, "Ins_Soldier_AA"];
_u set [count _u, "Ins_Soldier_AA"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumAATeam"];
_u		= ["Ins_Soldier_CO"];
_u set [count _u, "Ins_Soldier_AA"];
_u set [count _u, "Ins_Soldier_AA"];
_u set [count _u, "Ins_Soldier_AA"];
_u set [count _u, "ZSU_INS"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeAATeam"];
_u		= ["Ins_Soldier_CO"];
_u set [count _u, "Ins_Soldier_AA"];
_u set [count _u, "Ins_Soldier_AA"];
_u set [count _u, "ZSU_INS"];
_u set [count _u, "ZSU_INS"];
_u set [count _u, "BMP2_INS"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

diag_log Format ["[WFBE (INIT)][frameno:%1 | ticktime:%2] Occupation_INS: Initialization - [Done]",diag_frameno,diag_tickTime];