/* US Loadout */
Private ['_tiMode'];
_tiMode = 'WFBE_THERMALIMAGING' Call GetNamespace;
_tiMode = if (_tiMode == 1 || _tiMode == 3) then {true} else {false};

if (!isServer || local player) then {	
	if (side player == WEST) then {
		/* Magazines. */
		_m = ["30Rnd_556x45_Stanag"];
		_m = _m + ["30Rnd_556x45_StanagSD"];
		_m = _m + ["20Rnd_556x45_Stanag"];
		//_m = _m + ["30Rnd_556x45_G36"];
		//_m = _m + ["30Rnd_556x45_G36SD"];
		//_m = _m + ["100Rnd_556x45_BetaCMag"]; // Markus - Removed BetaC mags
		_m = _m + ["5Rnd_762x51_M24"];
		_m = _m + ["20Rnd_762x51_DMR"];
		_m = _m + ["10Rnd_127x99_m107"];
		_m = _m + ["100Rnd_762x51_M240"];
		_m = _m + ["100Rnd_556x45_M249"];
		_m = _m + ["200Rnd_556x45_M249"];
		_m = _m + ["30Rnd_9x19_MP5"];
		_m = _m + ["30Rnd_9x19_MP5SD"];
		_m = _m + ["8Rnd_B_Beneli_74Slug"];
		_m = _m + ["8Rnd_B_Beneli_Pellets"];
		_m = _m + ["20Rnd_762x51_B_SCAR"];
		_m = _m + ["20Rnd_762x51_SB_SCAR"];
		_m = _m + ["6Rnd_HE_M203"];
		_m = _m + ["6Rnd_FlareWhite_M203"];
		_m = _m + ["6Rnd_FlareGreen_M203"];
		_m = _m + ["6Rnd_FlareRed_M203"];
		_m = _m + ["6Rnd_FlareYellow_M203"];
		_m = _m + ["6Rnd_Smoke_M203"];
		_m = _m + ["6Rnd_SmokeRed_M203"];
		_m = _m + ["6Rnd_SmokeGreen_M203"];
		_m = _m + ["6Rnd_SmokeYellow_M203"];
		_m = _m + ["M136"];
		_m = _m + ["MAAWS_HEAT"];
		_m = _m + ["MAAWS_HEDP"];
		_m = _m + ["Javelin"];
		_m = _m + ["Stinger"];
		_m = _m + ["Laserbatteries"];
		_m = _m + ["15Rnd_9x19_M9"];
		_m = _m + ["15Rnd_9x19_M9SD"];
		_m = _m + ["7Rnd_45ACP_1911"];
		_m = _m + ["17Rnd_9x19_glock17"];
                _m = _m + ['30Rnd_9x19_UZI'];
		_m = _m + ['30Rnd_9x19_UZI_SD'];
		// Markus - Adding SMAW to BLUFOR
		//_m = _m + ["SMAW_HEAA"]; //Markus - Removing HEAA round
		_m = _m + ["SMAW_HEDP"];
		/// Markus
		if (modACE) then {
			_m = _m + ["ACE_10Rnd_127x99_T_m107"];
			_m = _m + ["ACE_10Rnd_127x99_Raufoss_m107"];
			_m = _m + ["ACE_5Rnd_25x59_HEDP_Barrett"];
			_m = _m + ["ACE_5Rnd_127x99_B_TAC50"];
			_m = _m + ["ACE_5Rnd_127x99_S_TAC50"];
			_m = _m + ["ACE_5Rnd_127x99_T_TAC50"];
			_m = _m + ["ACE_30Rnd_556x45_T_G36"];
			_m = _m + ["ACE_30Rnd_556x45_T_Stanag"];
			_m = _m + ["ACE_200Rnd_556x45_T_M249"];
			_m = _m + ["ACE_100Rnd_556x45_T_M249"];
			_m = _m + ["ACE_15Rnd_9x19_P226"];
			_m = _m + ["ACE_15Rnd_9x19_P8"];
			_m = _m + ["ACE_40Rnd_B_46x30_MP7"];
			_m = _m + ["ACE_25Rnd_1143x23_B_UMP45"];
			_m = _m + ["ACE_25Rnd_1143x23_S_UMP45"];
			_m = _m + ["ACE_12Rnd_45ACP_USP"];
			_m = _m + ["ACE_12Rnd_45ACP_USPSD"];
			_m = _m + ["ACE_20Rnd_762x51_B_HK417"];
			_m = _m + ["ACE_20Rnd_762x51_T_HK417"];
		};

		if (paramDLCBAF) then {
			_m = _m + ["5Rnd_127x99_AS50"];
			_m = _m + ["5Rnd_86x70_L115A1"];
			_m = _m + ["200Rnd_556x45_L110A1"];
			_m = _m + ["NLAW"];
		};
		
		if (paramDLCPMC) then {
			_m = _m + ["20Rnd_B_AA12_Pellets"];
			_m = _m + ["20Rnd_B_AA12_74Slug"];
			_m = _m + ["20Rnd_B_AA12_HE"];
		};

		WF_Logic setVariable ['magazineClasses',_m];

		/* Primary. */
		_w = ['M16A2'];
		_w = _w + ['M16A2GL'];
		_w = _w + ['m16a4'];
		_w = _w + ['m16a4_acg'];
		_w = _w + ['M16A4_GL'];
		_w = _w + ['M16A4_ACG_GL'];
		_w = _w + ['M24'];
		_w = _w + ['M40A3'];
		_w = _w + ['M24_des_EP1'];
		_w = _w + ['M240'];
		_w = _w + ['m240_scoped_EP1'];
		_w = _w + ['M60A4_EP1'];
		_w = _w + ['Mk_48'];
		_w = _w + ['Mk_48_DES_EP1'];
		_w = _w + ['M249_EP1'];
		if (_tiMode) then {
			_w = _w + ['M249_TWS_EP1'];
		};
		_w = _w + ['M249_m145_EP1'];
		_w = _w + ['M4A1'];
		_w = _w + ['M4A1_Aim'];
		_w = _w + ['M4A1_Aim_camo'];
		_w = _w + ['M4A1_RCO_GL'];
		_w = _w + ['M4A1_AIM_SD_camo'];
		_w = _w + ['M4A1_HWS_GL_SD_Camo'];
		_w = _w + ['M4A1_HWS_GL'];
		_w = _w + ['M4A1_HWS_GL_camo'];
		_w = _w + ['M4SPR'];
		_w = _w + ['M4A3_CCO_EP1'];
		_w = _w + ['M4A3_RCO_GL_EP1'];
		_w = _w + ['MP5SD'];
		_w = _w + ['MP5A5'];
		_w = _w + ['G36C'];
		_w = _w + ['G36C_camo'];
		_w = _w + ['G36_C_SD_eotech'];
		_w = _w + ['G36_C_SD_camo'];
		_w = _w + ['G36a'];
		_w = _w + ['G36A_camo'];
		_w = _w + ['G36K'];
		_w = _w + ['G36K_camo'];
		_w = _w + ['MG36'];
		_w = _w + ['MG36_camo'];
		_w = _w + ['DMR'];
		_w = _w + ['M1014'];
		_w = _w + ['M32_EP1'];
		_w = _w + ['M79_EP1'];
		_w = _w + ['Mk13_EP1'];
		_w = _w + ['M14_EP1'];
		_w = _w + ['m107'];
		if (_tiMode) then {
			_w = _w + ['m107_TWS_EP1'];
			_w = _w + ['M110_TWS_EP1'];
		};
		_w = _w + ['M110_NVG_EP1'];
		_w = _w + ['SCAR_L_CQC'];
		_w = _w + ['SCAR_L_CQC_Holo'];
		_w = _w + ['SCAR_L_STD_Mk4CQT'];
		_w = _w + ['SCAR_L_STD_EGLM_RCO'];
		_w = _w + ['SCAR_L_CQC_EGLM_Holo'];
		if (_tiMode) then {
			_w = _w + ['SCAR_L_STD_EGLM_TWS'];
		};
		_w = _w + ['SCAR_L_STD_HOLO'];
		_w = _w + ['SCAR_H_CQC_CCO'];
		_w = _w + ['SCAR_H_CQC_CCO_SD'];
		_w = _w + ['SCAR_H_STD_EGLM_Spect'];
		_w = _w + ['SCAR_H_LNG_Sniper'];
		_w = _w + ['SCAR_H_LNG_Sniper_SD'];
		if (_tiMode) then {
			_w = _w + ['SCAR_H_STD_TWS_SD'];
		};
		_w = _w + ['m8_carbine'];
		_w = _w + ['m8_carbineGL'];
		_w = _w + ['m8_compact'];
		_w = _w + ['m8_sharpshooter'];
		_w = _w + ['m8_SAW'];
		
		if (paramDLCBAF) then {
			_w = _w + ['BAF_AS50_scoped'];
			if (_tiMode) then {
				_w = _w + ['BAF_AS50_TWS'];
			};
			_w = _w + ['BAF_LRR_scoped'];
			_w = _w + ['BAF_LRR_scoped_W'];
			_w = _w + ['BAF_L85A2_RIS_Holo'];
			_w = _w + ['BAF_L85A2_UGL_Holo'];
			_w = _w + ['BAF_L85A2_RIS_SUSAT'];
			_w = _w + ['BAF_L85A2_UGL_SUSAT'];
			_w = _w + ['BAF_L85A2_RIS_ACOG'];
			_w = _w + ['BAF_L85A2_UGL_ACOG'];
			if (_tiMode) then {
				_w = _w + ['BAF_L85A2_RIS_CWS'];
			};
			_w = _w + ['BAF_L86A2_ACOG'];
			_w = _w + ['BAF_L110A1_Aim'];
			_w = _w + ['BAF_L7A2_GPMG'];
		};
		
		if (paramDLCPMC) then {
			_w = _w + ['AA12_PMC'];
			_w = _w + ['m8_carbine_pmc'];
			_w = _w + ['m8_compact_pmc'];
			_w = _w + ['m8_holo_sd'];
			if (_tiMode) then {
				_w = _w + ['m8_tws'];
				_w = _w + ['m8_tws_sd'];
			};
		};
		
		if (modACE) then {
			_w = _w + ['ACE_G36A2_Bipod_D'];
			_w = _w + ['ACE_G36A1_AG36A1_D'];
			_w = _w + ['ACE_M60'];
			_w = _w + ['ACE_M240L'];
			_w = _w + ['ACE_M240L_M145'];
			_w = _w + ['ACE_HK416_D10'];
			_w = _w + ['ACE_HK416_D10_AIM'];
			_w = _w + ['ACE_HK416_D10_COMPM3'];
			_w = _w + ['ACE_HK416_D10_COMPM3_SD'];
			_w = _w + ['ACE_HK416_D10_Holo'];
			_w = _w + ['ACE_HK416_D10_M320'];
			_w = _w + ['ACE_HK416_D10_SD'];
			_w = _w + ['ACE_HK416_D14'];
			_w = _w + ['ACE_HK416_D14_ACOG_PVS14'];
			_w = _w + ['ACE_HK416_D14_COMPM3'];
			_w = _w + ['ACE_HK416_D14_COMPM3_M320'];
			_w = _w + ['ACE_HK416_D14_SD'];
			_w = _w + ['ACE_HK417_Eotech_4x'];
			_w = _w + ['ACE_HK417_leupold'];
			_w = _w + ['ACE_HK417_micro'];
			_w = _w + ['ACE_HK417_Shortdot'];
			_w = _w + ['ACE_M4'];
			_w = _w + ['ACE_M4_ACOG'];
			_w = _w + ['ACE_M4_Aim'];
			_w = _w + ['ACE_M4_AIM_GL'];
			_w = _w + ['ACE_M4_Eotech'];
			_w = _w + ['ACE_M4_Eotech_GL'];
			_w = _w + ['ACE_M4_GL'];
			_w = _w + ['ACE_M4_RCO_GL'];
			_w = _w + ['ACE_M4A1_ACOG'];
			_w = _w + ['ACE_M4A1_ACOG_SD'];
			_w = _w + ['ACE_M4A1_AIM_GL'];
			_w = _w + ['ACE_M4A1_AIM_GL_SD'];
			_w = _w + ['ACE_M4A1_Aim_SD'];
			_w = _w + ['ACE_M4A1_Eotech'];
			_w = _w + ['ACE_M4A1_GL'];
			_w = _w + ['ACE_M4A1_GL_SD'];
			_w = _w + ['ACE_SOC_M4A1'];
			_w = _w + ['ACE_SOC_M4A1_Aim'];
			_w = _w + ['ACE_SOC_M4A1_AIM_SD'];
			_w = _w + ['ACE_SOC_M4A1_Eotech'];
			_w = _w + ['ACE_SOC_M4A1_Eotech_4x'];
			_w = _w + ['ACE_SOC_M4A1_GL'];
			_w = _w + ['ACE_SOC_M4A1_GL_13'];
			_w = _w + ['ACE_SOC_M4A1_GL_AIMPOINT'];
			_w = _w + ['ACE_SOC_M4A1_GL_EOTECH'];
			_w = _w + ['ACE_SOC_M4A1_GL_SD'];
			_w = _w + ['ACE_SOC_M4A1_RCO_GL'];
			_w = _w + ['ACE_SOC_M4A1_SD_9'];
			_w = _w + ['ACE_SOC_M4A1_SHORTDOT'];
			_w = _w + ['ACE_SOC_M4A1_SHORTDOT_SD'];
			_w = _w + ['ACE_SPAS12'];
			_w = _w + ['ACE_UMP45'];
			_w = _w + ['ACE_UMP45_AIM'];
			_w = _w + ['ACE_UMP45_AIM_SD'];
			_w = _w + ['ACE_UMP45_SD'];
			_w = _w + ['ACE_Mk12mod1'];
			_w = _w + ['ACE_Mk12mod1_SD'];
			_w = _w + ['ACE_MP5A4'];
			_w = _w + ['ACE_MP5A5'];
			_w = _w + ['ACE_MP5SD'];
			_w = _w + ['ACE_MP7'];
			_w = _w + ['ACE_MP7_RSAS'];
			_w = _w + ['ACE_M109'];
			_w = _w + ['ACE_M110'];
			_w = _w + ['ACE_M110_SD'];
			_w = _w + ['ACE_TAC50'];
			_w = _w + ['ACE_TAC50_SD'];
			_w = _w + ['ACE_MG36_D'];
		};

		WF_Logic setVariable ['primaryClasses',_w];

		/* Secondary. */

		_w = ['M136'];
		_w = _w + ['MAAWS'];
		_w = _w + ['SMAW']; // Markus - Adding SMAW to BLUFOR
		if (paramDLCBAF) then {
			_w = _w + ['BAF_NLAW_Launcher'];
		};
		
		_w = _w + ['Javelin'];
		_w = _w + ['Stinger'];
		_w = _w + ['Laserdesignator'];

		/* Not all units are able to carry a backpack */
		_get = getNumber(configFile >> 'CfgVehicles' >> typeOf player >> 'canCarryBackPack');
		
		if (_get == 1) then {
			_w = _w + ['US_Assault_Pack_EP1'];
			_w = _w + ['US_Patrol_Pack_EP1'];
			_w = _w + ['US_Backpack_EP1'];

			if (paramDLCBAF) then {
				_w = _w + ['BAF_AssaultPack_RifleAmmo'];
			};
			
			_w = _w + ['Tripod_Bag'];

			if (paramDLCBAF) then {
				_w = _w + ['BAF_L2A1_ACOG_minitripod_bag'];
				_w = _w + ['BAF_L2A1_ACOG_tripod_bag'];
				_w = _w + ['BAF_GPMG_Minitripod_D_bag'];
				_w = _w + ['BAF_GMG_ACOG_minitripod_bag'];
			};

			_w = _w + ['M2HD_mini_TriPod_US_Bag_EP1'];
			_w = _w + ['M2StaticMG_US_Bag_EP1'];
			_w = _w + ['MK19_TriPod_US_Bag_EP1'];
			_w = _w + ['TOW_TriPod_US_Bag_EP1'];
			_w = _w + ['M252_US_Bag_EP1'];
			
			if (modACE) then {
				_w = _w + ['ACE_M224TripodProxy'];
				_w = _w + ['ACE_M224Proxy'];
				_w = _w + ['ACE_VTAC_RUSH72_ACU'];
				_w = _w + ['ACE_BackPack_ACR_TT'];
				_w = _w + ['ACE_CharliePack_ACU'];
				_w = _w + ['ACE_CharliePack_ACU_Medic'];
				_w = _w + ['ACE_M252Proxy'];
				_w = _w + ['ACE_M252TripodProxy'];
			};
		};

		WF_Logic setVariable ['secondaryClasses',_w];

		/* Sidearms. */
		_w = ['Colt1911'];
		_w = _w + ['M9'];
		_w = _w + ['M9SD'];
		_w = _w + ['glock17_EP1'];
		if (modACE) then {
			_w = _w + ['ACE_USP'];
			_w = _w + ['ACE_USPSD'];
			_w = _w + ['ACE_P226'];
			_w = _w + ['ACE_P8'];
		};

		WF_Logic setVariable ['sidearmClasses',_w];

		/* Misc. */
		_w = ['HandGrenade_West'];

		if (paramDLCBAF) then {
			_w = _w + ['BAF_L109A1_HE'];
		};

		_w = _w + ['HandGrenade_Stone'];
		_w = _w + ['IR_Strobe_Target'];
		_w = _w + ['IR_Strobe_Marker'];
		_w = _w + ['SmokeShell'];
		_w = _w + ['SmokeShellRed'];
		_w = _w + ['SmokeShellGreen'];
		_w = _w + ['SmokeShellBlue'];
		_w = _w + ['SmokeShellYellow'];
		_w = _w + ['SmokeShellOrange'];
		_w = _w + ['SmokeShellPurple'];
		_w = _w + ['FlareWhite_M203'];
		_w = _w + ['FlareYellow_M203'];
		_w = _w + ['FlareGreen_M203'];
		_w = _w + ['FlareRed_M203'];
		_w = _w + ['1Rnd_HE_M203'];
		_w = _w + ['1Rnd_Smoke_M203'];
		_w = _w + ['1Rnd_SmokeRed_M203'];
		_w = _w + ['1Rnd_SmokeGreen_M203'];
		_w = _w + ['1Rnd_SmokeYellow_M203'];
                _w = _w + ['30Rnd_9x19_UZI'];
		_w = _w + ['30Rnd_9x19_UZI_SD'];
		_w = _w + ['Mine'];
		_w = _w + ['PipeBomb'];
		_w = _w + ['Binocular'];
		_w = _w + ['NVGoggles'];
		_w = _w + ['Binocular_Vector'];
		_w = _w + ['ItemCompass'];
		_w = _w + ['ItemGPS'];
		_w = _w + ['ItemMap'];
		_w = _w + ['ItemRadio'];
		_w = _w + ['ItemWatch'];
		
		if (modACE) then {
			_w = _w + ['ACE_HuntIR_M203'];
			_w = _w + ['ACE_FlareIR_M203'];
			_w = _w + ['ACE_Earplugs'];
			_w = _w + ['ACE_GlassesBalaklava'];
			_w = _w + ['ACE_GlassesGasMask_US'];
			_w = _w + ['ACE_GlassesTactical'];
			_w = _w + ['ACE_GlassesLHD_glasses'];
			_w = _w + ['ACE_HuntIR_monitor'];
			_w = _w + ['ACE_Javelin_CLU'];
			_w = _w + ['ACE_SpottingScope'];
			_w = _w + ['ACE_Kestrel4500'];
		};

		WF_Logic setVariable ['miscClasses',_w];

		//--- Templates.
		_items = ['ItemCompass','ItemGPS','ItemMap','ItemRadio','ItemWatch'];

		_d = [getText(configFile >> 'CfgWeapons' >> 'SCAR_L_CQC' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'Colt1911' >> 'displayName')];
		_p = [getText(configFile >> 'CfgWeapons' >> 'SCAR_L_CQC' >> 'picture')];
		_t = [['SCAR_L_CQC','Colt1911']];
		_m = [['30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag',
			'HandGrenade_West','HandGrenade_West','SmokeShellBlue','SmokeShellBlue','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911',
			'7Rnd_45ACP_1911','7Rnd_45ACP_1911']];
		_s = [['Binocular']];
		_i = [_items];
		_l = [0];
		_b = [true];

		_d = _d + [getText(configFile >> 'CfgWeapons' >> 'M16A4_GL' >> 'displayName')];
		_p = _p + [getText(configFile >> 'CfgWeapons' >> 'M16A4_GL' >> 'picture')];
		_t = _t + [['M16A4_GL']];
		_m = _m + [['30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag',
			'30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','HandGrenade_West','HandGrenade_West','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203',
			'1Rnd_HE_M203','1Rnd_HE_M203']];
		_s = _s + [['Binocular']];
		_i = _i + [_items];
		_l = _l + [0];
		_b = _b + [true];

		_d = _d + [getText(configFile >> 'CfgWeapons' >> 'G36C_camo' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'M136' >> 'displayName')];
		_p = _p + [getText(configFile >> 'CfgWeapons' >> 'G36C_camo' >> 'picture')];
		_t = _t + [['G36C_camo','M136']];
		_m = _m + [['30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','M136']];
		_s = _s + [['Binocular']];
		_i = _i + [_items];
		_l = _l + [0];
		_b = _b + [true];

		_d = _d + [getText(configFile >> 'CfgWeapons' >> 'SCAR_H_STD_EGLM_Spect' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'MAAWS' >> 'displayName')];
		_p = _p + [getText(configFile >> 'CfgWeapons' >> 'SCAR_H_STD_EGLM_Spect' >> 'picture')];
		_t = _t + [['SCAR_H_STD_EGLM_Spect','MAAWS']];
		_m = _m + [['20rnd_762x51_B_SCAR','20rnd_762x51_B_SCAR','20rnd_762x51_B_SCAR','20rnd_762x51_B_SCAR','20rnd_762x51_B_SCAR','20rnd_762x51_B_SCAR','MAAWS_HEAT',
			'MAAWS_HEAT','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203']];
		_s = _s + [['Binocular','NVGoggles']];
		_i = _i + [_items];
		_l = _l + [3];
		_b = _b + [false];

		_d = _d + [getText(configFile >> 'CfgWeapons' >> 'SCAR_L_STD_HOLO' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'MAAWS' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'M9' >> 'displayName')];
		_p = _p + [getText(configFile >> 'CfgWeapons' >> 'SCAR_L_STD_HOLO' >> 'picture')];
		_t = _t + [['BAF_L85A2_UGL_ACOG','MAAWS','M9']];
		_m = _m + [['30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','MAAWS_HEAT','MAAWS_HEAT',
			'15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9']];
		_s = _s + [['Binocular','NVGoggles']];
		_i = _i + [_items];
		_l = _l + [2];
		_b = _b + [false];

		_d = _d + [getText(configFile >> 'CfgWeapons' >> 'M4A3_CCO_EP1' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'Javelin' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'Colt1911' >> 'displayName')];
		_p = _p + [getText(configFile >> 'CfgWeapons' >> 'M4A3_CCO_EP1' >> 'picture')];
		_t = _t + [['M4A3_CCO_EP1','Javelin','Colt1911']];
		_m = _m + [['30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','Javelin',
			'7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911']];
		_s = _s + [['Binocular','NVGoggles']];
		_i = _i + [_items];
		_l = _l + [3];
		_b = _b + [false];

		_d = _d + [getText(configFile >> 'CfgWeapons' >> 'SCAR_L_STD_Mk4CQT' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'Stinger' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'M9' >> 'displayName')];
		_p = _p + [getText(configFile >> 'CfgWeapons' >> 'SCAR_L_STD_Mk4CQT' >> 'picture')];
		_t = _t + [['SCAR_L_STD_Mk4CQT','Stinger','M9']];
		_m = _m + [['30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','Stinger',
			'15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9']];
		_s = _s + [['Binocular','NVGoggles']];
		_i = _i + [_items];
		_l = _l + [2];
		_b = _b + [false];

		_d = _d + [getText(configFile >> 'CfgWeapons' >> 'SCAR_L_CQC' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'M9' >> 'displayName') + '/' + getText(configFile >> 'CfgMagazines' >> 'Mine' >> 'displayName')];
		_p = _p + [getText(configFile >> 'CfgWeapons' >> 'SCAR_L_CQC' >> 'picture')];
		_t = _t + [['SCAR_L_CQC','M9']];
		_m = _m + [['30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','Mine','Mine','Mine',
			'15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9']];
		_s = _s + [['Binocular']];
		_i = _i + [_items];
		_l = _l + [0];
		_b = _b + [true];

		_d = _d + [getText(configFile >> 'CfgWeapons' >> 'SCAR_H_CQC_CCO_SD' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'M9SD' >> 'displayName') + '/' + getText(configFile >> 'CfgMagazines' >> 'PipeBomb' >> 'displayName')];
		_p = _p + [getText(configFile >> 'CfgWeapons' >> 'SCAR_H_CQC_CCO_SD' >> 'picture')];
		_t = _t + [['SCAR_H_CQC_CCO_SD','M9SD']];
		_m = _m + [['20Rnd_762x51_SB_SCAR','20Rnd_762x51_SB_SCAR','20Rnd_762x51_SB_SCAR','20Rnd_762x51_SB_SCAR','20Rnd_762x51_SB_SCAR','20Rnd_762x51_SB_SCAR','PipeBomb','PipeBomb','PipeBomb',
			'15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD']];
		_s = _s + [['Binocular','NVGoggles']];
		_i = _i + [_items];
		_l = _l + [1];
		_b = _b + [true];

		_d = _d + [getText(configFile >> 'CfgWeapons' >> 'm240_scoped_EP1' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'Colt1911' >> 'displayName')];
		_p = _p + [getText(configFile >> 'CfgWeapons' >> 'm240_scoped_EP1' >> 'picture')];
		_t = _t + [['m240_scoped_EP1','Colt1911']];
		_m = _m + [['100Rnd_762x51_M240','100Rnd_762x51_M240','100Rnd_762x51_M240','100Rnd_762x51_M240','100Rnd_762x51_M240','SmokeShellRed','SmokeShellRed','7Rnd_45ACP_1911',
			'7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911']];
		_s = _s + [['Binocular']];
		_i = _i + [_items];
		_l = _l + [2];
		_b = _b + [true];

		_d = _d + [getText(configFile >> 'CfgWeapons' >> 'M249_EP1' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'Colt1911' >> 'displayName')];
		_p = _p + [getText(configFile >> 'CfgWeapons' >> 'M249_EP1' >> 'picture')];
		_t = _t + [['M249_EP1','Colt1911']];
		_m = _m + [['200Rnd_556x45_M249','200Rnd_556x45_M249','200Rnd_556x45_M249','200Rnd_556x45_M249','200Rnd_556x45_M249','SmokeShellRed','SmokeShellRed','7Rnd_45ACP_1911',
			'7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911']];
		_s = _s + [['Binocular','NVGoggles']];
		_i = _i + [_items];
		_l = _l + [2];
		_b = _b + [true];

		_d = _d + [getText(configFile >> 'CfgWeapons' >> 'M14_EP1' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'M9SD' >> 'displayName')];
		_p = _p + [getText(configFile >> 'CfgWeapons' >> 'M14_EP1' >> 'picture')];
		_t = _t + [['M14_EP1','M9SD']];
		_m = _m + [['20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR',
			'20Rnd_762x51_DMR','20Rnd_762x51_DMR','HandGrenade_West','HandGrenade_West','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD',
			'15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD']];
		_s = _s + [['Binocular_Vector','NVGoggles']];
		_i = _i + [_items];
		_l = _l + [2];
		_b = _b + [false];
		
		if (_tiMode) then {
			_d = _d + [getText(configFile >> 'CfgWeapons' >> 'M110_TWS_EP1' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'Laserdesignator' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'M9SD' >> 'displayName')];
			_p = _p + [getText(configFile >> 'CfgWeapons' >> 'M110_TWS_EP1' >> 'picture')];
			_t = _t + [['M110_TWS_EP1','Laserdesignator','M9SD']];
			_m = _m + [['20Rnd_762x51_B_SCAR','20Rnd_762x51_B_SCAR','20Rnd_762x51_B_SCAR','20Rnd_762x51_B_SCAR','20Rnd_762x51_B_SCAR','20Rnd_762x51_B_SCAR','20Rnd_762x51_B_SCAR','20Rnd_762x51_B_SCAR',
				'20Rnd_762x51_B_SCAR','20Rnd_762x51_B_SCAR','HandGrenade_West','Laserbatteries','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD',
				'15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD']];
			_s = _s + [['Binocular_Vector','NVGoggles']];
			_i = _i + [_items];
			_l = _l + [2];
			_b = _b + [false];
		};

		_d = _d + [getText(configFile >> 'CfgWeapons' >> 'm107' >> 'displayName') + '/' + getText(configFile >> 'CfgWeapons' >> 'M9SD' >> 'displayName')];
		_p = _p + [getText(configFile >> 'CfgWeapons' >> 'm107' >> 'picture')];
		_t = _t + [['m107','M9SD']];
		_m = _m + [['10Rnd_127x99_m107','10Rnd_127x99_m107','10Rnd_127x99_m107','10Rnd_127x99_m107','10Rnd_127x99_m107','10Rnd_127x99_m107','10Rnd_127x99_m107','10Rnd_127x99_m107',
			'10Rnd_127x99_m107','10Rnd_127x99_m107','HandGrenade_West','HandGrenade_West','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD',
			'15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD']];
		_s = _s + [['Binocular_Vector','NVGoggles']];
		_i = _i + [_items];
		_l = _l + [3];
		_b = _b + [false];

		_c = [];
		_totalTemplates = count _d;

		for [{_count = 0},{_count < _totalTemplates},{_count = _count + 1}] do {
			_cost = 0;
			{
				_get = (_x+"_W") Call GetNamespace;
				if (isNil '_get') then {
					_get = _x Call GetNamespace;
				};
				if !(isNil '_get') then {_cost = _cost + (_get select QUERYGEARCOST)};
			} forEach (_t select _count);
			
			{
				_get = _x Call GetNamespace;
				if !(isNil '_get') then {_cost = _cost + (_get select QUERYGEARCOST)};
			} forEach ((_m select _count) + (_s select _count) + (_i select _count));
			
			_c = _c + [_cost];
		};
		WF_Logic setVariable ['templateClasses',_t];
		WF_Logic setVariable ['templateNames',_d];
		WF_Logic setVariable ['templateCosts',_c];
		WF_Logic setVariable ['templatePictures',_p];
		WF_Logic setVariable ['templateMags',_m];
		WF_Logic setVariable ['templateItems',_i];
		WF_Logic setVariable ['templateSpecs',_s];
		WF_Logic setVariable ['templateUpgrades',_l];
		WF_Logic setVariable ['templateAllowed',_b];
	};
};

['WFBE_WESTDEFAULTWEAPONS',['SCAR_L_STD_HOLO','M9','ItemCompass','ItemMap','ItemWatch','ItemRadio'],true] Call SetNamespace;
['WFBE_WESTDEFAULTAMMO',['15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','15Rnd_9x19_M9','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','HandGrenade_West','HandGrenade_West','SmokeShell','SmokeShell'],true] Call SetNamespace;

//--- AI Leaders Loadouts.
if (isServer) then {
	//--- No Upgrade.
	['WFBE_WESTLEADERWEAPONS01',['SCAR_L_CQC','M136','Colt1911','Binocular','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_WESTLEADERAMMO01',['30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','M136','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911'],true] Call SetNamespace;
	['WFBE_WESTLEADERWEAPONS02',['G36C_camo','M136','Colt1911','Binocular','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_WESTLEADERAMMO02',['30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','M136','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911'],true] Call SetNamespace;
	['WFBE_WESTLEADERWEAPONS03',['m240_scoped_EP1','Colt1911','Binocular','ItemRadio','ItemMap'],true] Call SetNamespace;;
	['WFBE_WESTLEADERAMMO03',['100Rnd_762x51_M240','100Rnd_762x51_M240','100Rnd_762x51_M240','100Rnd_762x51_M240','100Rnd_762x51_M240','HandGrenade_West','HandGrenade_West','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911'],true] Call SetNamespace;
	//--- Upgrade 1.
	['WFBE_WESTLEADERWEAPONS11',['M4A3_CCO_EP1','M136','Colt1911','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_WESTLEADERAMMO11',['30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','M136','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911'],true] Call SetNamespace;
	['WFBE_WESTLEADERWEAPONS12',['G36K_camo','M136','Colt1911','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_WESTLEADERAMMO12',['30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','M136','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911'],true] Call SetNamespace;
	['WFBE_WESTLEADERWEAPONS13',['M14_EP1','M9SD','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_WESTLEADERAMMO13',['20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR','20Rnd_762x51_DMR','HandGrenade_West','HandGrenade_West','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD','15Rnd_9x19_M9SD'],true] Call SetNamespace;
	//--- Upgrade 2.
	['WFBE_WESTLEADERWEAPONS21',['SCAR_L_STD_HOLO','MAAWS','Colt1911','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_WESTLEADERAMMO21',['30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','MAAWS_HEAT','MAAWS_HEAT','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911'],true] Call SetNamespace;
	['WFBE_WESTLEADERWEAPONS22',['G36C_camo','MAAWS','Colt1911','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_WESTLEADERAMMO22',['30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','MAAWS_HEAT','MAAWS_HEAT','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911'],true] Call SetNamespace;
	['WFBE_WESTLEADERWEAPONS23',['MG36_camo','Colt1911','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_WESTLEADERAMMO23',['100Rnd_556x45_BetaCMag','100Rnd_556x45_BetaCMag','100Rnd_556x45_BetaCMag','100Rnd_556x45_BetaCMag','100Rnd_556x45_BetaCMag','HandGrenade_West','HandGrenade_West','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911'],true] Call SetNamespace;
	//--- Upgrade 3.
	['WFBE_WESTLEADERWEAPONS31',['SCAR_L_CQC_EGLM_Holo','MAAWS','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_WESTLEADERAMMO31',['30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','30Rnd_556x45_Stanag','MAAWS_HEAT','MAAWS_HEAT','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203','1Rnd_HE_M203'],true] Call SetNamespace;
	['WFBE_WESTLEADERWEAPONS32',['SCAR_H_STD_EGLM_Spect','Javelin','Colt1911','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_WESTLEADERAMMO32',['20Rnd_762x51_B_SCAR','20Rnd_762x51_B_SCAR','20Rnd_762x51_B_SCAR','20Rnd_762x51_B_SCAR','20Rnd_762x51_B_SCAR','20Rnd_762x51_B_SCAR','Javelin','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911'],true] Call SetNamespace;
	['WFBE_WESTLEADERWEAPONS33',['Mk_48_DES_EP1','Colt1911','Binocular','NVGoggles','ItemRadio','ItemMap'],true] Call SetNamespace;
	['WFBE_WESTLEADERAMMO33',['100Rnd_762x51_M240','100Rnd_762x51_M240','100Rnd_762x51_M240','100Rnd_762x51_M240','100Rnd_762x51_M240','HandGrenade_West','HandGrenade_West','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911','7Rnd_45ACP_1911'],true] Call SetNamespace;
};