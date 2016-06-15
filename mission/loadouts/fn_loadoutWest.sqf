//place all mission related stuff here
//do not overwrite this file when copying framework from mission to mission

/*
classesArray = ["class1", "class2", "class3"];
fashionArray = ["uniform", "vest", "headgear", "backpack", "goggles"];
weaponArray1 = ["rifle1", [["mag1", number], ["mag2", number]], ["device1", "device2"]];
weaponArray2 = ["rifle2", [["mag1", number], ["mag2", number]], ["device1", "device2"]];
handgunArray1 = ["handgun", [["mag", number]], ["device"]];
weaponsArray = [weaponArray1, handgunArray1];
eqpArray = [classesArray, [fashionArray, weaponsArray]];
*/

_basicMedicine = [["ACE_elasticBandage", 5], ["ACE_morphine", 2], ["ACE_epinephrine", 2]];
_advancedMedicine = [["ACE_elasticBandage", 5], ["ACE_quikclot", 5], ["ACE_morphine", 2], ["ACE_epinephrine", 2], ["ACE_atropine", 2], ["ACE_tourniquet", 1]];

_basicMedicMedicine = [["ACE_elasticBandage", 10], ["ACE_morphine", 3], ["ACE_epinephrine", 3], ["ACE_salineIV_500", 2]];
_advancedMedicMedicine = [["ACE_elasticBandage", 10], ["ACE_quikclot", 10], ["ACE_morphine", 3], ["ACE_epinephrine", 3], ["ACE_atropine", 3], ["ACE_tourniquet", 2], ["ACE_personalAidKit", 2], ["ACE_salineIV_500", 2]];

_leaderFashion = ["U_B_CombatUniform_mcam", "V_BandollierB_rgr", "H_MilCap_mcamo", "B_AssaultPack_cbr", ""];
_riflemanFashion = ["U_B_CombatUniform_mcam", "V_BandollierB_rgr", "H_MilCap_mcamo", "B_AssaultPack_cbr", ""];
_pilotFashion = ["U_B_CombatUniform_mcam", "V_BandollierB_rgr", "H_MilCap_mcamo", "B_Parachute", ""];

_leaderWeapon = ["arifle_MX_GL_F", [["30Rnd_65x39_caseless_mag", 7], ["1Rnd_HE_Grenade_shell", 3]], ["optic_Aco"]];
_riflemanWeapon = ["arifle_MX_F", [["30Rnd_65x39_caseless_mag", 7]], []];
_mgWeapon = ["arifle_MX_SW_F", [["100Rnd_65x39_caseless_mag_Tracer", 7]], ["bipod_01_F_snd"]];
_grenadierWeapon = ["arifle_MX_GL_F", [["30Rnd_65x39_caseless_mag", 7], ["1Rnd_HE_Grenade_shell", 3]], []];

_leaderHandgun = ["hgun_P07_F", [["16Rnd_9x21_Mag", 3]], []];
_pilotHandgun = ["hgun_P07_F", [["16Rnd_9x21_Mag", 3]], []];

_riflemanAT = ["launch_NLAW_F", [], []];
_specialistAT = ["launch_B_Titan_short_F", [["Titan_AT", 3]], []];
_specialistAA = ["launch_B_Titan_F", [["Titan_AA", 3]], []];

_binoculars = ["Laserdesignator", [], []];

_boxAT = "launch_NLAW_F";

_smokeGrenade = "SmokeShellBlue";
_fragGrenade = "HandGrenade";

_loadoutArray = [
	[
		[
			["officer", "squad leader"],
			[
				_leaderFashion,
				[_leaderWeapon, _leaderHandgun, _binoculars]
			]
		],
		[
			["team leader"],
			[
				_riflemanFashion,
				[_leaderWeapon, _leaderHandgun, _binoculars]
			]
		],
		[
			["rifleman"],
			[
				_riflemanFashion,
				[_riflemanWeapon]
			]
		],
		[
			["autorifleman"],
			[
				_riflemanFashion,
				[_mgWeapon]
			]
		],
		[
			["rifleman (at)"],
			[
				_riflemanFashion,
				[_riflemanWeapon, _riflemanAT]
			]
		],
		[
			["missile specialist (at)"],
			[
				_riflemanFashion,
				[_riflemanWeapon, _specialistAT]
			]
		],
		[
			["combat life saver"],
			[
				_riflemanFashion,
				[_riflemanWeapon]
			]
		],
		[
			["engineer"],
			[
				_riflemanFashion,
				[_riflemanWeapon]
			]
		],
		[
			["pilot"],
			[
				_pilotFashion,
				[_pilotHandgun]
			]
		],
		[
			["grenadier"],
			[
				_riflemanFashion,
				[_grenadierWeapon]
			]
		],
		[
			["missile specialist (aa)"],
			[
				_riflemanFashion,
				[_riflemanWeapon, _specialistAA]
			]
		]
	], //equipment per class
	[
		[
			["all"],
			[["ACRE_PRC343", 1], ["ACE_EarPlugs", 1], ["ACE_Flashlight_XL50", 1], [_smokeGrenade, 2], ["ACE_CableTie", 2]] + _advancedMedicine, //items, acre radios go here
			["ItemMap", "ItemCompass", "ItemWatch", "ItemGPS", "tf_anprc152", "NVGoggles"] //link items, tfar radios go here
		],
		[
			["officer", "squad leader"],
			[["ACRE_PRC148", 1], ["murshun_cigs_lighter", 1]],
			[]
		],
		[
			["team leader"],
			[["ACRE_PRC148", 1], ["murshun_cigs_lighter", 1]],
			[]
		],
		[
			["combat life saver"],
			_advancedMedicMedicine,
			[]
		],
		[
			["engineer"],
			[["ACE_M26_Clacker", 1], ["ACE_DefusalKit", 1]],
			[]
		],
		[
			["pilot"],
			[["ACRE_PRC148", 1]],
			[]
		]
	], //personal items per class
	[
		["ACE_EarPlugs", 20],
		["ACE_Flashlight_XL50", 20],
		["ToolKit", 2],
		["ACE_wirecutter", 2],
		["ACE_SpareBarrel", 4],
		["DemoCharge_Remote_Mag", 20],
		["SatchelCharge_Remote_Mag", 4],
		["ACE_CableTie", 10],
		["ACE_Clacker", 2],
		["EWK_Cig1", 100],
		["murshun_cigs_matches", 40],
		[_boxAT, 20],
		[_smokeGrenade, 100],
		[_fragGrenade, 20]
	] //content for boxes
];

//output of the function, do not remove or change
_loadoutArray
