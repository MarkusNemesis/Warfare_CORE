Private ['_u'];

//--- USMC Light Vehicles.
_u 			= ['MMT_USMC'];
_u set [count _u,'M1030'];
_u set [count _u,'HMMWV'];
_u set [count _u,'Zodiac'];
_u set [count _u,'HMMWV_M2'];
_u set [count _u,'HMMWV_Armored'];
_u set [count _u,'HMMWV_MK19'];
//_u set [count _u,'HMMWV_TOW'];
_u set [count _u,'HMMWV_Avenger'];
_u set [count _u,'HMMWV_Ambulance'];
_u set [count _u,'MTVR'];
_u set [count _u,'MtvrRepair'];
_u set [count _u,'WarfareReammoTruck_USMC'];
_u set [count _u,'MtvrRefuel'];
_u set [count _u,'WarfareSalvageTruck_USMC'];
if (('WFBE_SUPPLYSYSTEM' Call GetNamespace) == 0) then {_u set [count _u,'WarfareSupplyTruck_USMC']};
_u set [count _u,'RHIB'];
_u set [count _u,'RHIB2Turret'];
_u set [count _u,'LAV25'];

_u