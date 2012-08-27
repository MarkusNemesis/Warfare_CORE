Private ["_n","_u"];

_n		= ["SmallTeam1"];
_u		= ["USMC_Soldier_SL"];
_u set [count _u, "USMC_Soldier_TL"];
_u set [count _u, "USMC_Soldier_AR"];
_u set [count _u, "USMC_Soldier"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "SmallTeam2"];
_u		= ["USMC_Soldier_TL"];
_u set [count _u, "USMC_Soldier_AR"];
_u set [count _u, "USMC_Soldier_LAT"];
_u set [count _u, "USMC_Soldier_Medic"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "SmallTeam3"];
_u		= ["USMC_Soldier_TL"];
_u set [count _u, "USMC_Soldier_MG"];
_u set [count _u, "USMC_Soldier_AR"];
_u set [count _u, "USMC_Soldier_LAT"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "SmallVehTeam1"];
_u		= ["USMC_Soldier_TL"];
_u set [count _u, "HMMWV_Avenger"];
_u set [count _u, "HMMWV_Armored"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "SmallVehTeam2"];
_u		= ["USMC_Soldier_SL"];
//_u set [count _u, "HMMWV_TOW"];
_u set [count _u, "LAV25"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "SmallVehTeam3"];
_u		= ["USMC_Soldier_TL"];
_u set [count _u, "HMMWV_Avenger"];
_u set [count _u, "HMMWV_MK19"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumTeam1"];
_u		= ["USMC_Soldier_TL"];
_u set [count _u, "USMC_Soldier_AR"];
_u set [count _u, "USMC_Soldier_Medic"];
_u set [count _u, "USMC_Soldier_AA"];
_u set [count _u, "USMC_Soldier_AA"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumTeam2"];
_u		= ["USMC_Soldier_TL"];
_u set [count _u, "USMC_Soldier_AA"];
_u set [count _u, "USMC_Soldier_AA"];
_u set [count _u, "USMC_Soldier_LAT"];
_u set [count _u, "USMC_Soldier_AT"];
_u set [count _u, "USMC_Soldier_AR"];
_u set [count _u, "USMC_Soldier_MG"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumTeam3"];
_u		= ["USMC_SoldierS_Sniper"];
_u set [count _u, "USMC_SoldierS_Spotter"];
_u set [count _u, "USMC_SoldierS_Spotter"];
_u set [count _u, "USMC_SoldierS"];
_u set [count _u, "USMC_SoldierS"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumVehTeam1"];
_u		= ["USMC_Soldier_TL"];
_u set [count _u, "HMMWV_Avenger"];
_u set [count _u, "AAV"];
_u set [count _u, "LAV25"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumVehTeam2"];
_u		= ["USMC_Soldier_TL"];
_u set [count _u, "M1A1"];
_u set [count _u, "M1A1"];
_u set [count _u, "HMMWV_Ambulance"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumVehTeam3"];
_u		= ["USMC_Soldier_TL"];
_u set [count _u, "AAV"];
_u set [count _u, "HMMWV_M2"];
_u set [count _u, "M1A1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeTeam1"];
_u		= ["USMC_Soldier_HAT"];
_u set [count _u, "USMC_Soldier_AT"];
_u set [count _u, "USMC_Soldier_HAT"];
_u set [count _u, "USMC_Soldier_HAT"];
_u set [count _u, "USMC_Soldier_HAT"];
_u set [count _u, "USMC_Soldier"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeTeam2"];
_u		= ["FR_TL"];
_u set [count _u, "FR_AR"];
_u set [count _u, "FR_GL"];
_u set [count _u, "FR_Marksman"];
_u set [count _u, "FR_R"];
_u set [count _u, "FR_Corpsman"];
_u set [count _u, "FR_Sapper"];
_u set [count _u, "FR_AC"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeTeam3"];
_u		= ["USMC_Soldier_TL"];
_u set [count _u, "USMC_Soldier_AA"];
_u set [count _u, "USMC_Soldier_AA"];
_u set [count _u, "USMC_Soldier_Medic"];
_u set [count _u, "USMC_Soldier_GL"];
_u set [count _u, "USMC_SoldierS_Sniper"];
_u set [count _u, "USMC_Soldier_AT"];
_u set [count _u, "USMC_Soldier_MG"];
_u set [count _u, "USMC_Soldier_AR"];
_u set [count _u, "USMC_Soldier_LAT"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeVehTeam1"];
_u		= ["USMC_Soldier_TL"];
_u set [count _u, "M1A2_TUSK_MG"];
_u set [count _u, "M1A2_TUSK_MG"];
_u set [count _u, "M1A2_TUSK_MG"];
_u set [count _u, "M1A2_TUSK_MG"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeVehTeam2"];
_u		= ["USMC_Soldier_TL"];
_u set [count _u, "M1A2_TUSK_MG"];
_u set [count _u, "M1A2_TUSK_MG"];
_u set [count _u, "MLRS"];
_u set [count _u, "M1A2_TUSK_MG"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeVehTeam3"];
_u		= ["USMC_Soldier_TL"];
_u set [count _u, "M1A2_TUSK_MG"];
_u set [count _u, "M1A2_TUSK_MG"];
_u set [count _u, "M1A2_TUSK_MG"];
_u set [count _u, "AAV"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

//--- AA Units used by towns occupation in case of 'air assault' only.
_n set [count _n, "SmallAATeam"];
_u		= ["USMC_Soldier_TL"];
_u set [count _u, "USMC_Soldier_AA"];
_u set [count _u, "USMC_Soldier_AA"];
_u set [count _u, "USMC_Soldier_AA"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "MediumAATeam"];
_u		= ["USMC_Soldier_TL"];
_u set [count _u, "USMC_Soldier_AA"];
_u set [count _u, "USMC_Soldier_AA"];
_u set [count _u, "HMMWV_Avenger"];
_u set [count _u, "HMMWV_Avenger"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n set [count _n, "LargeAATeam"];
_u		= ["USMC_Soldier_TL"];
_u set [count _u, "USMC_Soldier_AA"];
_u set [count _u, "USMC_Soldier_AA"];
_u set [count _u, "USMC_Soldier_AA"];
_u set [count _u, "HMMWV_Avenger"];
_u set [count _u, "HMMWV_Avenger"];
_u set [count _u, "HMMWV_Avenger"];
_u set [count _u, "HMMWV_Armored"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

diag_log Format ["[WFBE (INIT)][frameno:%1 | ticktime:%2] Occupation_USMC: Initialization - [Done]",diag_frameno,diag_tickTime];