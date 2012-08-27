Private ['_aiTeamTemplateRequires','_aiTeamTemplateName','_aiTeamTemplates','_aiTeamTypes','_aiTeamUpgrades','_return','_u'];

//--- Overall Dump.
_return = ["East", "INS"] Call Compile preprocessFile "Common\Config\Core_Squads\Squads_GetFactionGroups.sqf";
_aiTeamTemplates = _return select 0;
_aiTeamTemplateName = _return select 1;
_aiTeamTemplateRequires = _return select 2;
_aiTeamTypes = _return select 3;
_aiTeamUpgrades = _return select 4;

//--- Custom Groups.
_u		= ["BMP2_INS"];
_u set [count _u, "BMP2_INS"];

_aiTeamTemplateName set [count _aiTeamTemplateName, "Armor - APC Platoon"];
_aiTeamTemplates set [count _aiTeamTemplates, _u];
_aiTeamTypes set [count _aiTeamTypes, 2];
_aiTeamTemplateRequires set [count _aiTeamTemplateRequires, [false,false,true,false]];
_aiTeamUpgrades set [count _aiTeamUpgrades,[0,0,2,0]];

_u		= ["ZSU_INS"];
_u set [count _u, "ZSU_INS"];

_aiTeamTemplateName set [count _aiTeamTemplateName, "Armor - AA Platoon"];
_aiTeamTemplates set [count _aiTeamTemplates, _u];
_aiTeamTypes set [count _aiTeamTypes, 2];
_aiTeamTemplateRequires set [count _aiTeamTemplateRequires, [false,false,true,false]];
_aiTeamUpgrades set [count _aiTeamUpgrades,[0,0,1,0]];

_u		= ["Mi17_Ins"];
_u set [count _u, "Ins_Soldier_Medic"];
_u set [count _u, "Ins_Soldier_MG"];
_u set [count _u, "Ins_Soldier_AR"];
_u set [count _u, "Ins_Soldier_AT"];
_u set [count _u, "Ins_Soldier_AT"];
_u set [count _u, "Ins_Soldier_Sniper"];
_u set [count _u, "Ins_Soldier_1"];

_aiTeamTemplateName set [count _aiTeamTemplateName, "Air - Mi-8 Infantry Squadron"];
_aiTeamTemplates set [count _aiTeamTemplates, _u];
_aiTeamTypes set [count _aiTeamTypes, 3];
_aiTeamTemplateRequires set [count _aiTeamTemplateRequires, [false,false,false,true]];
_aiTeamUpgrades set [count _aiTeamUpgrades,[1,0,0,0]];

[_aiTeamTemplates,_aiTeamTemplateRequires,_aiTeamTypes,_aiTeamUpgrades,_aiTeamTemplateName]