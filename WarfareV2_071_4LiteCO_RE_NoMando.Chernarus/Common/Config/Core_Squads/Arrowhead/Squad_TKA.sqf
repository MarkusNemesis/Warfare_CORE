Private ['_aiTeamTemplateRequires','_aiTeamTemplateName','_aiTeamTemplates','_aiTeamTypes','_aiTeamUpgrades','_return','_u'];

//--- Overall Dump.
_return = ["East", "BIS_TK", ["TK_An2Flight"]] Call Compile preprocessFile "Common\Config\Core_Squads\Squads_GetFactionGroups.sqf";
_aiTeamTemplates = _return select 0;
_aiTeamTemplateName = _return select 1;
_aiTeamTemplateRequires = _return select 2;
_aiTeamTypes = _return select 3;
_aiTeamUpgrades = _return select 4;

//--- Custom Groups.
_u		= ["BMP2_TK_EP1"];
_u set [count _u, "BMP2_TK_EP1"];

_aiTeamTemplateName set [count _aiTeamTemplateName, "Armor - IFV Platoon (Light)"];
_aiTeamTemplates set [count _aiTeamTemplates, _u];
_aiTeamTemplateRequires set [count _aiTeamTemplateRequires, [false,false,true,false]];
_aiTeamTypes set [count _aiTeamTypes, 2];
_aiTeamUpgrades set [count _aiTeamUpgrades,[0,0,0,0]];

_u		= ["ZSU_TK_EP1"];
_u set [count _u, "ZSU_TK_EP1"];

_aiTeamTemplateName set [count _aiTeamTemplateName, "Armor - Anti Air Platoon"];
_aiTeamTemplates set [count _aiTeamTemplates, _u];
_aiTeamTemplateRequires set [count _aiTeamTemplateRequires, [false,false,true,false]];
_aiTeamTypes set [count _aiTeamTypes, 2];
_aiTeamUpgrades set [count _aiTeamUpgrades,[0,0,1,0]];

_u		= ["Mi17_TK_EP1"];
_u set [count _u, "TK_Soldier_SL_EP1"];
_u set [count _u, "TK_Soldier_AA_EP1"];
_u set [count _u, "TK_Soldier_AA_EP1"];
_u set [count _u, "TK_Soldier_LAT_EP1"];
_u set [count _u, "TK_Soldier_LAT_EP1"];
_u set [count _u, "TK_Soldier_MG_EP1"];
_u set [count _u, "TK_Soldier_MG_EP1"];

_aiTeamTemplateName set [count _aiTeamTemplateName, "Air - Infantry Mi-17 Squadron"];
_aiTeamTemplates set [count _aiTeamTemplates, _u];
_aiTeamTemplateRequires set [count _aiTeamTemplateRequires, [true,false,false,true]];
_aiTeamTypes set [count _aiTeamTypes, 3];
_aiTeamUpgrades set [count _aiTeamUpgrades,[2,0,0,0]];

[_aiTeamTemplates,_aiTeamTemplateRequires,_aiTeamTypes,_aiTeamUpgrades,_aiTeamTemplateName]