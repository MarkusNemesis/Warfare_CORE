Private ['_aiTeamTemplateRequires','_aiTeamTemplateName','_aiTeamTemplates','_aiTeamTypes','_aiTeamUpgrades','_return','_u'];

//--- Overall Dump.
_return = ["West", "USMC", ["USMC_MQ9Squadron","USMC_FRTeam_Razor"]] Call Compile preprocessFile "Common\Config\Core_Squads\Squads_GetFactionGroups.sqf";
_aiTeamTemplates = _return select 0;
_aiTeamTemplateName = _return select 1;
_aiTeamTemplateRequires = _return select 2;
_aiTeamTypes = _return select 3;
_aiTeamUpgrades = _return select 4;

//--- Custom Groups.
_u		= ["M1A1"];
_u set [count _u, "M1A1"];

_aiTeamTemplateName set [count _aiTeamTemplateName, "Armor - M1A1 Section"];
_aiTeamTemplates set [count _aiTeamTemplates, _u];
_aiTeamTemplateRequires set [count _aiTeamTemplateRequires, [false,false,true,false]];
_aiTeamTypes set [count _aiTeamTypes, 2];
_aiTeamUpgrades set [count _aiTeamUpgrades,[0,0,1,0]];

_u		= ["UH1Y"];
_u set [count _u, "USMC_Soldier_TL"];
_u set [count _u, "USMC_Soldier_AR"];
_u set [count _u, "USMC_Soldier_LAT"];
_u set [count _u, "USMC_Soldier_Medic"];
_u set [count _u, "USMC_Soldier"];
_u set [count _u, "USMC_Soldier"];
_u set [count _u, "USMC_Soldier"];

_aiTeamTemplateName set [count _aiTeamTemplateName, "Air - Infantry UH1Y Squadron"];
_aiTeamTemplates set [count _aiTeamTemplates, _u];
_aiTeamTemplateRequires set [count _aiTeamTemplateRequires, [true,false,false,true]];
_aiTeamTypes set [count _aiTeamTypes, 3];
_aiTeamUpgrades set [count _aiTeamUpgrades,[0,0,0,1]];

_u		= ["MH60S"];
_u set [count _u, "USMC_Soldier_TL"];
_u set [count _u, "USMC_Soldier_MG"];
_u set [count _u, "USMC_Soldier_AT"];
_u set [count _u, "USMC_Soldier_Medic"];
_u set [count _u, "USMC_Soldier"];
_u set [count _u, "USMC_Soldier"];
_u set [count _u, "USMC_Soldier"];

_aiTeamTemplateName set [count _aiTeamTemplateName, "Air - Infantry MH-60S Squadron"];
_aiTeamTemplates set [count _aiTeamTemplates, _u];
_aiTeamTemplateRequires set [count _aiTeamTemplateRequires, [true,false,false,true]];
_aiTeamTypes set [count _aiTeamTypes, 3];
_aiTeamUpgrades set [count _aiTeamUpgrades,[2,0,0,0]];

[_aiTeamTemplates,_aiTeamTemplateRequires,_aiTeamTypes,_aiTeamUpgrades,_aiTeamTemplateName]