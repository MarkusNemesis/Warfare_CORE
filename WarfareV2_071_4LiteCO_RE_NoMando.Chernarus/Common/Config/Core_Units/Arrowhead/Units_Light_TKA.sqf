Private ['_u'];

//--- Takistan Light Vehicles.
_u 			= ['TT650_TK_EP1'];
_u set [count _u,'UAZ_unarmed_TK_EP1'];
_u set [count _u,'SUV_TK_EP1'];
_u set [count _u,'UAZ_MG_TK_EP1'];
_u set [count _u,'UAZ_AGS30_TK_EP1'];
_u set [count _u,'LandRover_MG_TK_EP1'];
_u set [count _u,'LandRover_SPG9_TK_EP1'];
_u set [count _u,'V3S_TK_EP1'];
_u set [count _u,'V3S_Open_TK_EP1'];
_u set [count _u,'UralRepair_TK_EP1'];
_u set [count _u,'UralReammo_TK_EP1'];
_u set [count _u,'UralRefuel_TK_EP1'];
_u set [count _u,'UralSalvage_TK_EP1'];
if (('WFBE_SUPPLYSYSTEM' Call GetNamespace) == 0) then {_u set [count _u,'UralSupply_TK_EP1']};
_u set [count _u,'M113Ambul_TK_EP1'];
_u set [count _u,'BRDM2_TK_EP1'];
_u set [count _u,'BRDM2_ATGM_TK_EP1'];
_u set [count _u,'BTR60_TK_EP1'];
_u set [count _u,'Ural_ZU23_TK_EP1'];
_u set [count _u,'GRAD_TK_EP1'];

_u