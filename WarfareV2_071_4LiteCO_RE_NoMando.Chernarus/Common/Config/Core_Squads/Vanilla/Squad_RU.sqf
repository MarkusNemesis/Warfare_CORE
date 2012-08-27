Private ['_aiTeamTemplateRequires','_aiTeamTemplateName','_aiTeamTemplates','_aiTeamTypes','_aiTeamUpgrades','_return','_u'];

//--- Overall Dump.
_return = ["East", "RU", ["RU_Pchela1TSquadron","RU_Ka52Squadron"]] Call Compile preprocessFile "Common\Config\Core_Squads\Squads_GetFactionGroups.sqf";
_aiTeamTemplates = _return select 0;
_aiTeamTemplateName = _return select 1;
_aiTeamTemplateRequires = _return select 2;
_aiTeamTypes = _return select 3;
_aiTeamUpgrades = _return select 4;

//--- Custom Groups.
_u		= ["2S6M_Tunguska"];
_u set [count _u, "2S6M_Tunguska"];

_aiTeamTemplateName set [count _aiTeamTemplateName, "Armor - Anti Air Platoon"];
_aiTeamTemplates set [count _aiTeamTemplates, _u];
_aiTeamTemplateRequires set [count _aiTeamTemplateRequires, [false,false,true,false]];
_aiTeamTypes set [count _aiTeamTypes, 2];
_aiTeamUpgrades set [count _aiTeamUpgrades,[0,0,3,0]];

_u		= ["T72_RU"];
_u set [count _u, "T72_RU"];

_aiTeamTemplateName set [count _aiTeamTemplateName, "Armor - Tank Platoon (Light)"];
_aiTeamTemplates set [count _aiTeamTemplates, _u];
_aiTeamTemplateRequires set [count _aiTeamTemplateRequires, [false,false,true,false]];
_aiTeamTypes set [count _aiTeamTypes, 2];
_aiTeamUpgrades set [count _aiTeamUpgrades,[0,0,1,0]];

_u		= ["Mi17_Ins"];
_u set [count _u, "MVD_Soldier_TL"];
_u set [count _u, "MVD_Soldier_GL"];
_u set [count _u, "MVD_Soldier_MG"];
_u set [count _u, "MVD_Soldier_MG"];
_u set [count _u, "MVD_Soldier_Marksman"];
_u set [count _u, "MVD_Soldier_AT"];
_u set [count _u, "MVD_Soldier_AT"];

_aiTeamTemplateName set [count _aiTeamTemplateName, "Air - Infantry Mi-8 Squadron"];
_aiTeamTemplates set [count _aiTeamTemplates, _u];
_aiTeamTemplateRequires set [count _aiTeamTemplateRequires, [true,false,false,true]];
_aiTeamTypes set [count _aiTeamTypes, 3];
_aiTeamUpgrades set [count _aiTeamUpgrades,[2,0,0,0]];

_u		= ["Mi17_rockets_RU"];
_u set [count _u, "RU_Soldier_TL"];
_u set [count _u, "RU_Soldier_AA"];
_u set [count _u, "RU_Soldier_LAT"];
_u set [count _u, "RU_Soldier_LAT"];
_u set [count _u, "RU_Soldier_MG"];
_u set [count _u, "RU_Soldier_MG"];

_aiTeamTemplateName set [count _aiTeamTemplateName, "Air - Infantry Mi-8 Squadron (Rockets)"];
_aiTeamTemplates set [count _aiTeamTemplates, _u];
_aiTeamTemplateRequires set [count _aiTeamTemplateRequires, [true,false,false,true]];
_aiTeamTypes set [count _aiTeamTypes, 3];
_aiTeamUpgrades set [count _aiTeamUpgrades,[2,0,0,1]];

if !(paramRestrictionKamov) then {
	_u		= ["Ka52Black"];
	_u set [count _u, "Ka52"];

	_aiTeamTemplateName set [count _aiTeamTemplateName, "Air - Ka-52 Squadron"];
	_aiTeamTemplates set [count _aiTeamTemplates, _u];
	_aiTeamTemplateRequires set [count _aiTeamTemplateRequires, [false,false,false,true]];
	_aiTeamTypes set [count _aiTeamTypes, 3];
	_aiTeamUpgrades set [count _aiTeamUpgrades,[0,0,0,3]];
};

[_aiTeamTemplates,_aiTeamTemplateRequires,_aiTeamTypes,_aiTeamUpgrades,_aiTeamTemplateName]