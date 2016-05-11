// global_variable.includes
//by tankbuster
islandcentre = getarray (configFile >> "CfgWorlds" >> "Altis" >> "centerPosition");

opfor_reinf_truck_soldier = "CUP_O_RU_Soldier_GL_EMR";
opfor_CQB_soldier = ["CUP_O_RUS_Soldier_TL_Autumn","CUP_O_RUS_SpecOps_Autumn","CUP_O_RUS_SpecOps_SD_Autumn","CUP_O_RUS_SpecOps_Night_Autumn","CUP_O_RUS_Saboteur_Autumn","CUP_O_RUS_Soldier_GL_Autumn","CUP_O_RUS_Soldier_Marksman_Autumn","CUP_O_RUS_Commander_Autumn","CUP_O_RUS_SpecOps_Scout_Night_Autumn","CUP_O_RUS_SpecOps_Scout_Night_Autumn","CUP_O_RUS_SpecOps_Scout_Autumn"];
opfor_reinf_truck =  "CUP_O_Ural_Open_RU";

opfor_reinf_helos = ["CUP_O_Mi8_SLA_1","CUP_O_Mi8_SLA_2","CUP_O_MI6T_RU","CUP_O_Mi8_medevac_RU"];

forwardpointvehicleclassname = "CUP_B_BAF_Coyote_L2A1_W";
fobvehicleclassname = "CUP_B_Mastiff_HMG_GB_W";
publicVariable "fobvehicleclassname";
blufordropaircraft = "CUP_B_C130J_GB";
cardinaldirs = ["north of ", "northeast of ", "east of ", "southeast of ", "south of ", "southwest of ", "west of ", "northwest of ", "north of "];

heartandmindscore = 0;
civkillcount = 0;
reinforcementcounter = 0;
captivekillcounter = 0;

prizes = ["CUP_B_Ridgback_GMG_GB_W","CUP_B_MCV80_GB_W_SLAT","CUP_B_MCV80_GB_W","CUP_B_Mastiff_GMG_GB_W","CUP_B_FV510_GB_W","CUP_B_FV510_GB_W_SLAT","CUP_B_FV432_Bulldog_GB_W_RWS","B_MBT_01_TUSK_F","B_MBT_01_cannon_F","CUP_B_FV432_Bulldog_GB_W"];
//aplandmines = ["ModuleMine_APERSBoundingMine_F"];
//aplandmines = ["ACE_Explosives_Place_APERSBoundingMine", "ACE_Explosives_Place_APERSMine"]; //APERSBoundingMine APERSMine ace from things/other << spawn at 000
aplandmines = ["APERSBoundingMine", "APERSMine" ]; // <--vanilla from weapons/explosives << spawn and explode but no defuse
civs = ["CUP_C_C_Worker_01","CUP_C_C_Worker_02","CUP_C_C_Worker_03","CUP_C_C_Worker_04","CUP_C_C_Rocker_02","CUP_C_C_Woodlander_04","CUP_C_C_Worker_05","CUP_C_C_Woodlander_01","CUP_C_C_Woodlander_02","CUP_C_C_Woodlander_03",
	   "CUP_C_C_Villager_01","CUP_C_C_Villager_02","CUP_C_C_Villager_03","CUP_C_C_Villager_04","CUP_C_C_Rocker_01","CUP_C_C_Profiteer_04","CUP_C_C_Citizen_01","CUP_C_C_Profiteer_03","CUP_C_C_Profiteer_02","CUP_C_C_Profiteer_01",
	   "CUP_C_C_Rocker_04","CUP_C_C_Rocker_03","CUP_C_C_Citizen_02","CUP_C_C_Citizen_03","CUP_C_C_Citizen_04","CUP_C_C_Mechanic_01","CUP_C_C_Woodlander_02","CUP_C_C_Mechanic_02","CUP_C_C_Mechanic_03","C_man_1","C_man_1_1_F",
	   "C_man_1_2_F","C_man_1_3_F","C_man_polo_1_F","C_man_polo_1_F_afro","C_man_polo_1_F_euro","C_man_polo_1_F_asia","C_man_polo_2_F","C_man_polo_2_F_afro","C_man_polo_2_F_euro","C_man_polo_2_F_asia","C_man_polo_3_F",
	   "C_man_polo_3_F_afro","C_man_polo_3_F_euro","C_man_polo_3_F_asia","C_man_polo_4_F","C_man_polo_4_F_afro","C_man_polo_4_F_euro","C_man_polo_4_F_asia","C_man_polo_5_F","C_man_polo_5_F_afro","C_man_polo_5_F_euro",
	   "C_man_polo_5_F_asia","C_man_polo_6_F","C_man_polo_6_F_afro","C_man_polo_6_F_euro","C_man_polo_6_F_asia","C_man_p_fugitive_F","C_man_p_fugitive_F_afro","C_man_p_fugitive_F_euro","C_man_p_fugitive_F_asia",
	   "C_man_p_beggar_F","C_man_p_beggar_F_afro","C_man_p_beggar_F_euro","C_man_p_beggar_F_asia","C_man_w_worker_F","C_man_hunter_1_F","C_man_p_shorts_1_F","C_man_p_shorts_1_F_afro","C_man_p_shorts_1_F_euro",
	   "C_man_p_shorts_1_F_asia","C_man_shorts_1_F","C_man_shorts_1_F_afro","C_man_shorts_1_F_euro","C_man_shorts_1_F_asia","C_man_shorts_2_F","C_man_shorts_2_F_afro","C_man_shorts_2_F_euro","C_man_shorts_2_F_asia",
	   "C_man_shorts_3_F","C_man_shorts_3_F_afro","C_man_shorts_3_F_euro","C_man_shorts_3_F_asia","C_man_shorts_4_F","C_man_shorts_4_F_afro","C_man_shorts_4_F_euro","C_man_shorts_4_F_asia"];// all the civs apart from named and stpry related ones

civcars =["C_Offroad_01_F","C_Offroad_luxe_F", "C_Offroad_01_sand_F", "C_Offroad_stripped_F", "C_Hatchback_01_F", "C_Hatchback_01_sport_F", "C_Van_01_transport_F", "C_Van_01_box_F", "C_Van_01_fuel_F",
		 "CUP_C_Datsun_Covered","CUP_C_Ural_Civ_03","CUP_C_Ural_Civ_02","CUP_C_Ural_Open_Civ_02","CUP_C_SUV_CIV","CUP_C_Ural_Open_Civ_01","CUP_C_Datsun_Plain","CUP_C_Datsun_Tubeframe","CUP_C_Golf4_white_Civ",
		 "CUP_C_Golf4_yellow_Civ","CUP_C_Golf4_random_Civ","CUP_C_Octavia_CIV","CUP_C_Ural_Civ_01","CUP_C_Datsun_4seat","CUP_C_Datsun","CUP_C_Skoda_White_CIV","CUP_C_Skoda_Red_CIV","CUP_C_Skoda_Green_CIV",
		 "CUP_C_Skoda_Blue_CIV","CUP_C_Golf4_red_Civ","CUP_C_Golf4_green_Civ","CUP_C_Golf4_blue_Civ","CUP_C_Golf4_black_Civ"];

opforpatrollandvehicles = ["CUP_O_BMP2_RU", "CUP_O_BMP3_RU", "CUP_O_BTR90_RU", "CUP_O_GAZ_Vodnik_AGS_RU", "CUP_O_GAZ_Vodnik_BPPU_RU", "CUP_O_Ural_ZU23_RU", "CUP_O_UAZ_MG_RU", "CUP_O_UAZ_METIS_RU", "CUP_O_BRDM2_SLA"];
opforstaticlandvehicles =["CUP_O_Ural_ZU23_RU", "CUP_O_BM21_RU", "CUP_O_2S6M_RU"];
opforradartypes = ["CUP_A2_76n6_clamshell_lower", "CUP_A2_76n6_clamshell_ep1"];
opfortanks = ["CUP_O_T55_TK", "CUP_O_T72_RU"];

aaccomposition = [
	["CUP_O_UAZ_MG_RU",[-20.1211,33.5195,0.0134125],124.876,1,0,[-1.26621,2.01704],"","",true,false],
	["CUP_O_Ural_Open_RU",[-15.9697,39.3184,0.063118],128.25,1,0,[-1.4036,-0.622098],"","",true,false],
	["CUP_O_Ural_Open_RU",[-11.6084,43.6318,0.0724449],130.257,1,0,[-1.24493,-1.14197],"","",true,false],
	["Land_Cargo40_yellow_F",[-32.7334,42.2188,0.0889244],221.73,1,0,[0.677484,-1.97689],"","",true,false],
	["Land_Cargo20_cyan_F",[-27.6523,47.2324,0.033289],216.835,1,0,[-0.0489713,-2.24166],"","",true,false],
	["CUP_O_Mi8_SLA_1",[4.37012,55.6006,-0.452085],324.806,1,0,[7.7695,2.58104],"","",true,false],
	["Land_Cargo20_light_green_F",[-23.9395,51.9922,0.0559063],223.318,1,0,[-0.336559,-3.00663],"","",true,false],
	["Land_HelipadCircle_F",[3.12695,57.9834,4.19617e-005],0,1,0,[0.763851,4.57433],"","",true,false],
	["CUP_O_UAZ_MG_RU",[22.6104,73.0791,-0.0311127],0.338337,1,0,[0.136723,0.614293],"","",true,false],/**/
	["Box_IND_AmmoVeh_F",[21.4072,90.6396,0.0701942],0.0222595,1,0.00739477,[6.12349,1.06336],"","",true,false],
	["Box_IND_AmmoVeh_F",[24.1025,90.7373,0.0330791],359.974,1,0.0052198,[2.82421,1.60318],"","",true,false],
	["Box_IND_AmmoVeh_F",[21.3564,92.9668,0.0331459],359.997,1,0,[2.82077,1.58632],"","",true,false],
	["Box_IND_AmmoVeh_F",[24.0615,93.0322,0.0330448],359.976,1,0,[2.82392,1.60287],"","",true,false],
	["CUP_O_Ural_Open_RU",[31.1816,91.9248,0.0790863],90.6443,1,0,[1.03186,2.66049],"","",true,false],
	["Box_IND_AmmoVeh_F",[21.498,94.9414,0.0331097],359.967,1,0,[2.822,1.59475],"","",true,false],
	["Box_IND_AmmoVeh_F",[24.2021,95.0059,0.033083],0.00612213,1,0.00455583,[2.81939,1.60906],"","",true,false],
	["Box_IND_AmmoVeh_F",[21.584,96.8496,0.0330791],359.978,1,0.00462809,[2.82596,1.60665],"","",true,false],
	["Box_IND_AmmoVeh_F",[24.2881,96.915,0.0329514],359.975,1,0,[2.59516,1.83188],"","",true,false],
	["Box_IND_AmmoVeh_F",[21.9844,99.0371,0.0305538],359.991,1,0,[-0.840174,1.83411],"","",true,false],
	["CUP_O_Ural_Open_RU",[31.1582,99.3711,0.0703793],90.0536,1,0,[-1.0039,0.170701],"","",true,false],
	["Land_HelipadCircle_F",[106.138,18.7832,0],0,1,0,[0.763851,7.67037],"","",true,false],
	["CUP_O_Mi8_SLA_1",[107.061,17.5479,-0.223131],324.962,1,0,[8.94144,5.48577],"","",true,false],
	["Land_BagBunker_Large_F",[26.9893,-115.646,-0.0723171],322.314,1,0,[8.16878,-1.09966],"","",true,false],
	["Land_HelipadCircle_F",[123.296,48.0615,0.000209808],0,1,0,[1.06935,3.66254],"","",true,false],
	["CUP_O_Mi24_V_RU",[125.011,47.9932,-0.389071],322.161,1,0,[7.11891,0.0994497],"","",true,false],
	["CUP_O_Mi24_V_RU",[140.332,68.4033,-0.333458],323.525,1,0,[9.32107,0.989208],"","",true,false],
	["Land_HelipadCircle_F",[139.813,70.291,0],0,1,0,[6.6921,1.61488],"","",true,false],
	["Land_Rampart_F",[63.541,143.758,-0.0444622],216.86,1,0,[0,0],"","",true,false],
	["CUP_O_Su25_RU_1",[81.0283,139.379,-0.335424],124.828,1,0,[4.21463,0.105014],"","",true,false],/**/
	["Land_TentHangar_V1_F",[81.8906,139.46,0.701073],125.112,1,0,[0,-0],"","",true,false],
	["Land_Rampart_F",[67.1328,148.83,-0.00359726],216.215,1,0,[0,0],"","",true,false],
	["Land_Rampart_F",[70.6719,153.575,-0.0311317],216,1,0,[0,0],"","",true,false],
	["Land_i_Barracks_V1_F",[16.0566,172.784,0],305.446,1,0,[0,0],"","",true,false],
	["Land_HelipadCircle_F",[163.164,107.313,1.90735e-006],0,1,0,[2.44312,0.535335],"","",true,false],
	["CUP_O_Ka50_RU",[164.223,106.48,-0.364712],316.73,1,0,[6.1428,-0.164852],"","",true,false],
	["StorageBladder_01_fuel_forest_F",[123.865,217.571,4.00543e-005],0,1,0,[0,0.0740019],"","",true,false],
	["CUP_O_Ural_Refuel_RU",[122.181,231.85,0.0453892],270.25,1,0,[0.0935179,-0.0354859],"","",true,false],/**/
	["Land_ClutterCutter_large_F",[97.8799,264.873,0],0,1,0,[-0.228997,0.305193],"","",true,false],
	["Land_HelipadCircle_F",[97.9883,265.025,0],0,1,0,[-0.228997,0.305193],"","",true,false],
	["CUP_O_Ka50_RU",[98.3945,266.809,-0.205954],294.54,1,0,[0.883781,0.353421],"","",true,false],
	["CUP_O_Ural_ZU23_RU",[116.061,269.343,0.0453529],268.894,1,0,[0.0357993,0.0573635],"","",true,false],/**/
	["Land_Wreck_BMP2_F",[20.4365,294.821,0.0716591],0,1,0,[1.52752,3.6632],"","",true,false],
	["CUP_O_Ural_Refuel_RU",[263.886,160.162,0.0449486],304.866,1,0,[0.479764,-0.136],"","",true,false],/**/
	["CUP_O_Su25_RU_1",[131.115,289.05,-0.332676],116.466,1,0,[5.30392,-0.269021],"","",true,false],/**/
	["CUP_O_Ka52_Blk_RU",[241.89,210.406,-0.205597],318.218,1,0,[0.809509,-0.140666],"","",true,false],/**/
	["Land_HelipadCircle_F",[242.721,210.19,0],0,1,0,[0.151948,-0.076617],"","",true,false],
	["CUP_O_UAZ_AMB_RU",[14.2217,349.624,-0.0781174],359.963,1,0,[4.27791,11.077],"","",true,false],/**/
	["Land_BagBunker_Small_F",[257.51,236.437,-0.00294876],0,1,0,[0.30519,-0.0766178],"","",true,false],
	["Land_Cargo_Tower_V1_No1_F",[179.239,307.21,0],326.702,1,0,[0,0],"","",true,false],
	["CUP_O_Ural_Refuel_RU",[141.084,331.067,0.0393867],270.252,1,0,[0.217054,0.258496],"","",true,false],
	["CUP_O_Ural_Open_RU",[167.768,326.81,0.0724468],157.75,1,0,[-0.2937,-1.13085],"","",true,false],
	["Land_Wreck_BRDM2_F",[309.342,313.439,0.262505],0,1,0,[1.83291,10.7265],"","",true,false],
	["CUP_O_UAZ_AMB_RU",[276.661,343.048,-0.0651283],359.975,1,0,[2.21176,3.66819],"","",true,false]/**/
];
abderacomposition = [
	["Land_HelipadCircle_F",[32.3906,-52.0156,0.000207901],0,1,0,[-0.687565,-2.21451],"","",true,false],
	["CUP_O_Mi8_RU",[33.6055,-53.2344,-0.472437],322.262,1,0,[3.03189,-0.87777],"","",true,false],
	["CUP_O_Su25_RU_3",[-53.2617,36.8711,-0.33112],143.78,1,0,[5.49683,-0.0126415],"","",true,false],
	["Land_TentHangar_V1_F",[-54.4902,37.459,0.815615],143.782,1,0,[0,-0],"","",true,false],
	["CUP_O_Su25_RU_3",[-0.181641,67.2891,-0.329273],184.221,1,0,[5.81311,-0.191785],"","",true,false],
	["Land_HelipadCircle_F",[1.47363,-74.2617,0],0,1,0,[-1.14569,-0.076632],"","",true,false],
	["CUP_O_Mi8_SLA_2",[2.42578,-75.5566,-0.474003],325.283,1,0,[3.33255,0.592516],"","",true,false],
	["CUP_O_Su25_RU_3",[-74.3135,21.1699,-0.330805],143.111,1,0,[5.53018,-0.341304],"","",true,false],
	["Land_TentHangar_V1_F",[-75.4023,21.5645,0.975632],143.782,1,0,[0,-0],"","",true,false],
	["Land_HelipadCircle_F",[83.1641,-16.3867,0],0,1,0,[0.30519,-0.151953],"","",true,false],
	["CUP_O_Su25_RU_3",[25.4883,82.3516,-0.325253],194.839,1,0,[6.19943,0.704376],"","",true,false],
	["CUP_O_Mi24_V_RU",[86.3828,-18.8965,-0.501554],316.583,1,0,[4.09317,-0.237954],"","",true,false],
	["CUP_O_Ural_Refuel_RU",[16.2783,94.0391,0.0407562],268.898,1,0,[0.217914,0.893805],"","",true,false],
	["CUP_O_Ural_Open_RU",[-96.8125,-4.32813,0.0854015],90.0998,1,0,[-1.67644,-1.42168],"","",true,false],
	["CUP_O_Ural_Open_RU",[-96.7852,-11.7715,0.0758801],90.632,1,0,[-1.81524,-1.28013],"","",true,false],
	["CUP_O_Ural_Refuel_RU",[101.234,-5.27344,0.0582619],173.59,1,0,[-0.386093,0.0570348],"","",true,false],
	["Box_IND_AmmoVeh_F",[-103.678,-6.78125,0.0327816],359.974,1,0,[-1.22215,2.82395],"","",true,false],
	["Box_IND_AmmoVeh_F",[-103.764,-8.68945,0.032795],359.973,1,0,[-1.22222,2.82386],"","",true,false],
	["Box_IND_AmmoVeh_F",[-103.905,-10.6641,0.0328903],359.985,1,0,[-1.22316,2.82399],"","",true,false],
	["Box_IND_AmmoVeh_F",[-103.863,-12.9551,0.0349216],359.979,1,0.00420542,[-0.281134,1.60647],"","",true,false],
	["Box_IND_AmmoVeh_F",[-105.98,-4.6582,0.0335178],359.97,1,0,[-2.06162,2.8238],"","",true,false],
	["CUP_O_Su25_RU_3",[46.9541,95.3516,-0.328537],195.789,1,0.0365138,[5.48914,0.506807],"","",true,false],
	["Box_IND_AmmoVeh_F",[-106.381,-6.8457,0.0328617],359.973,1,0,[-1.22221,2.82387],"","",true,false],
	["Box_IND_AmmoVeh_F",[-106.468,-8.75391,0.0328941],359.994,1,0.0041927,[-1.22174,2.82485],"","",true,false],
	["Box_IND_AmmoVeh_F",[-106.607,-10.7285,0.0311947],0.00812769,1,0,[-0.000118816,1.60448],"","",true,false],
	["Box_IND_AmmoVeh_F",[-106.565,-13.0176,0.0355015],359.967,1,0.0060884,[-0.322779,1.60679],"","",true,false],
	["Land_ClutterCutter_large_F",[84.4082,68.377,0],0,1,0,[-0.916639,-1.52771],"","",true,false],
	["CUP_O_UAZ_SPG9_RU",[-116.127,-17.7168,-0.0335999],359.993,1,0,[1.41176,0.867314],"","",true,false],
	["StorageBladder_01_fuel_forest_F",[41.7012,114.848,0.000415802],147.379,1,0,[0.774316,0.502053],"","",true,false],
	["CUP_O_Ural_Refuel_RU",[-0.0664063,122.309,0.0424042],146.301,1,0,[-0.0517377,-0.112413],"","",true,false],
	["Land_BagBunker_Small_F",[100.275,75.457,0.027071],0,1,0,[-2.67181,0.917626],"","",true,false],
	["CUP_O_Ural_Open_RU",[5.68652,126.117,0.0694771],149.045,1,0,[0.0412469,0.0554522],"","",true,false],
	["CUP_O_Ka52_Blk_RU",[126.882,19.3301,-0.203241],318.186,1,0,[1.2096,0.13493],"","",true,false],
	["Land_HelipadCircle_F",[127.714,19.1133,-1.90735e-006],0,1,0,[0.458405,0.3052],"","",true,false],
	["Land_Cargo_Tower_V1_No1_F",[27.292,135.695,0],326.702,1,0,[0,0],"","",true,false],
	["Land_HelipadCircle_F",[-132.445,-36.5527,0],0,1,0,[-0.305187,0.15195],"","",true,false],
	["CUP_O_Mi8_SLA_2",[-134.649,-34.8281,-0.466211],135.636,1,0,[3.99992,-0.133748],"","",true,false],
	["CUP_O_Ural_Open_RU",[-132.987,-54.8984,0.070261],130.244,1,0,[0.106485,0.119314],"","",true,false],
	["CUP_O_Ural_Open_RU",[-137.346,-59.2051,0.068243],128.255,1,0,[-0.151394,0.2957],"","",true,false],
	["Land_Cargo20_light_green_F",[-145.32,-46.5156,-0.000944138],223.286,1,0,[-0.168703,-0.107305],"","",true,false],
	["CUP_O_UAZ_AMB_RU",[-141.497,-65.0117,0.024662],124.897,1,0,[0.317543,-1.55154],"","",true,false],
	["Land_Cargo20_cyan_F",[-149.053,-51.3242,0.00123405],216.88,1,0,[0.0192577,0.0512373],"","",true,false],
	["Land_i_Barracks_V1_F",[0.777344,161.93,0],326.833,1,0,[0,0],"","",true,false],
	["Land_Cargo40_yellow_F",[-154.15,-56.3203,-0.050951],221.609,1,0,[-2.48411,1.63261],"","",true,false],
	["Land_Wreck_BMP2_F",[126.825,128.836,-0.00849247],0,1,0,[-1.29845,0],"","",true,false],
	["CUP_O_UAZ_METIS_RU",[176.812,74.793,-0.0620327],0.0277122,1,0,[6.72621,-9.16519],"","",true,false],
	["CUP_O_UAZ_METIS_RU",[89.1387,183.684,-0.0941582],360,1,0,[0.000383244,-6.4837e-005],"","",true,false],
	["Land_Wreck_BRDM2_F",[229.827,10.6504,-0.0233746],0,1,0,[-1.37473,-1.98601],"","",true,false],
	["Land_BagBunker_Large_F",[-151.931,-209.186,0.00858688],322.645,1,0,[-0.835742,0.541573],"","",true,false]
];
almyracomposition = [
	["CUP_O_Mi24_V_RU",[107.348,-39.8047,-0.503873],128.9,1,0,[3.94599,-0.00229869],"","",true,false],
	["CUP_O_Su25_RU_1",[-116.084,-39.0723,-0.332295],90.435,1,0.0371789,[5.21872,0.00319401],"","",true,false],
	["Land_TentHangar_V1_F",[-116.482,-39.0684,0],90.548,1,0,[0,-0],"","",true,false],
	["C_Heli_Light_01_civil_F",[128.588,53.8027,0.00463653],134.933,1,0,[0.0902591,-0.00034241],"","",true,false],
	["CUP_O_UAZ_Open_RU",[147.035,42.2754,-0.0337687],359.971,1,0,[1.37024,1.03841],"","",true,false],
	["CUP_O_UAZ_METIS_RU",[106.164,110.51,-0.0942011],360,1,0,[0.000903226,0.00157857],"","",true,false],
	["CUP_O_Ural_Refuel_RU",[-74.6895,134.588,0.0433674],270.25,1,0,[-0.0412078,-0.0222202],"","",true,false],
	["CUP_O_Mi24_P_RU",[155.83,-1.08594,-0.503899],130.157,1,0,[3.94584,-0.00216304],"","",true,false],
	["CUP_O_Ural_Refuel_RU",[122.107,101.107,0.0405512],267.07,1,0,[-0.0426852,-0.0283501],"","",true,false],
	["Land_Shed_Small_F",[127.006,111.311,0],180,1,0,[0,0],"","",true,false],
	["CUP_O_Ural_Refuel_RU",[121.832,109.064,0.0405517],268.894,1,0,[-0.0426629,-0.0283547],"","",true,false],
	["Land_i_Shed_Ind_F",[122.705,127.404,0],90,1,0,[0,-0],"","",true,false],
	["Land_Shed_Big_F",[124.42,141.652,0],0,1,0,[0,0],"","",true,false],
	["Land_Wreck_BMP2_F",[-122.066,155.027,0.020782],0,1,0,[0,0],"","",true,false],
	["CUP_O_Ural_Empty_RU",[-82.7129,199.209,0.06955],157.746,1,0,[-0.0103526,0.0189576],"","",true,false],
	["CUP_O_UAZ_METIS_RU",[-110.559,216.869,-0.0942881],359.999,1,0,[0.00227934,4.20962e-007],"","",true,false],
	["Box_IND_AmmoVeh_F",[85.084,231.057,0.030544],359.998,1,0.00548333,[0.000715906,-0.000721372],"","",true,false],
	["Box_IND_AmmoVeh_F",[87.7871,231.121,0.030544],359.998,1,0.00545741,[0.000678341,-0.00069987],"","",true,false],
	["Box_IND_AmmoVeh_F",[85.043,233.352,0.0305355],359.996,1,0,[0.000312119,-0.00103775],"","",true,false],
	["Box_IND_AmmoVeh_F",[87.7461,233.416,0.0305417],359.998,1,0.00518657,[0.000973167,-0.000958623],"","",true,false],
	["Box_IND_AmmoVeh_F",[85.1836,235.326,0.0305402],359.997,1,0.0049914,[0.000731136,-0.00129818],"","",true,false],
	["CUP_O_Ural_Empty_RU",[94.8672,232.309,0.0691133],90.5964,1,0,[-0.0104075,0.0195774],"","",true,false],
	["Box_IND_AmmoVeh_F",[87.8867,235.391,0.0305355],359.996,1,0,[0.00031963,-0.0010335],"","",true,false],
	["Box_IND_AmmoVeh_F",[85.2695,237.234,0.0305393],359.998,1,0.00392899,[0.000142305,-0.000549269],"","",true,false],
	["Box_IND_AmmoVeh_F",[87.9727,237.299,0.0305355],359.996,1,0,[0.000311876,-0.00102805],"","",true,false],
	["Box_IND_AmmoVeh_F",[85.6699,239.422,0.0305393],359.998,1,0.00380794,[-4.82597e-005,-0.000511185],"","",true,false],
	["CUP_O_Ural_Empty_RU",[94.8438,239.754,0.0691175],90.0567,1,0,[-0.0103977,0.0195533],"","",true,false],
	["Land_Wreck_BRDM2_F",[219.98,144.928,0.020782],0,1,0,[0,0],"","",true,false],
	["CUP_O_UAZ_Open_RU",[98.4141,280.9,0.0176477],124.898,1,0,[0.111816,-0.0813253],"","",true,false]
];
ferescomposition = [
	["CUP_O_Mi8_medevac_RU",[-38.1758,-46.396,-0.441282],155.917,1,0,[5.21625,-0.705783],"","",true,false],
	["CUP_O_Mi8_SLA_1",[-37.9238,61.188,-0.430969],132.029,1,0,[-1.42709,-1.08295],"","",true,false],
	["CUP_O_Mi24_P_RU",[-68.1309,44.2485,-0.544449],165.645,1,0,[7.72653,-4.11054],"","",true,false],
	["CUP_O_Su25_RU_1",[-24.5879,92.1177,-0.33058],310.824,1,0,[5.53967,0.836909],"","",true,false],
	["CUP_O_Ural_Open_RU",[-107.25,14.1099,0.0772724],130.305,1,0,[-1.02257,-3.22161],"","",true,false],
	["CUP_O_Su25_RU_1",[-2.35156,113.807,-0.268044],291.416,1,0,[7.41686,0.405724],"","",true,false],
	["CUP_O_Ural_Empty_RU",[-111.334,25.7915,0.136141],90.1836,1,0,[-1.57955,-3.88812],"","",true,false],
	["Box_IND_AmmoVeh_F",[-118.654,24.3862,0.0391216],359.99,1,0.00449154,[-4.5752,3.46868],"","",true,false],
	["Land_Cargo20_cyan_F",[-120.939,12.6787,-0.000873566],216.884,1,0,[-0.845521,-1.06157],"","",true,false],
	["Box_IND_AmmoVeh_F",[-118.693,26.6958,0.0489311],359.917,1,0.00717259,[-5.3522,2.16005],"","",true,false],
	["Box_IND_AmmoVeh_F",[-118.553,28.6558,0.0364361],359.996,1,0.0040911,[-4.42455,2.13885],"","",true,false],
	["Box_IND_AmmoVeh_F",[-118.469,30.564,0.0365238],0.00404904,1,0.0040762,[-4.42518,2.13936],"","",true,false],
	["Box_IND_AmmoVeh_F",[-121.396,26.6172,0.0416851],359.998,1,0,[-5.78724,3.51008],"","",true,false],
	["Box_IND_AmmoVeh_F",[-121.273,28.5933,0.0565205],0.0325875,1,0.00839248,[-5.78152,2.34593],"","",true,false],
	["Box_IND_AmmoVeh_F",[-121.17,30.4995,0.0363655],359.996,1,0,[-4.42243,2.13752],"","",true,false],
	["Box_IND_AmmoVeh_F",[-120.77,32.6787,0.044529],0.0159997,1,0.00674806,[-3.81095,2.13651],"","",true,false],
	["Box_IND_AmmoVeh_F",[-123.91,21.4653,0.0314045],359.989,1,0,[-1.756,0.68653],"","",true,false],
	["Land_Cargo40_yellow_F",[-126.107,11.6831,0.023983],221.749,1,0,[-2.09567,1.08028],"","",true,false],
	["CUP_O_Su25_RU_2",[-60.6191,116,-0.318163],164.836,1,0,[6.03607,-0.654687],"","",true,false],
	["CUP_O_Ural_Open_RU",[-132.404,22.4097,0.100279],246.428,1,0,[-1.42671,2.58652],"","",true,false],
	["CUP_O_Su25_RU_2",[-43.1035,136.037,-0.31827],138.995,1,0,[6.65275,-1.75808],"","",true,false],
	["Land_Cargo20_light_green_F",[-134.252,60.9497,0.0294056],223.282,1,0,[1.58903,2.44535],"","",true,false],
	["CUP_O_UAZ_Open_RU",[-150.346,-23.5527,-0.0338802],359.937,1,0,[1.45924,0.801148],"","",true,false],
	["Land_Wreck_BRDM2_F",[-117.813,105.424,-0.0580921],0,1,0,[-2.4432,-2.90313],"","",true,false],
	["CUP_O_Su25_RU_3",[-18.7773,157.326,-0.24824],152.424,1,0,[4.17089,-6.57713],"","",true,false],
	["CUP_O_Ural_Open_RU",[-114.357,119.585,-0.0941105],0.0037104,1,0,[-0.762987,0.533189],"","",true,false],
	["Land_Wreck_BMP2_F",[-76.9316,148.053,0.0259361],0,1,0,[-0.764127,-4.65024],"","",true,false],
	["CUP_O_UAZ_MG_RU",[-117.799,120.595,-0.104013],0.0397917,1,0,[-0.275095,1.84413],"","",true,false],
	["CUP_O_Ural_Open_RU",[-164.418,-38.2925,0.0700283],320.167,1,0,[-0.0720354,0.411403],"","",true,false],
	["CUP_O_Ural_Refuel_RU",[-171.301,-42.9023,0.0514565],318.044,1,0,[-0.226012,-0.45351],"","",true,false],
	["CUP_O_Ural_Refuel_RU",[-177.889,-47.4512,0.0474415],319.375,1,0,[0.0371827,-0.1435],"","",true,false],
	["CUP_O_UAZ_Open_RU",[-180.014,41.0664,0.0175571],142.095,1,0,[-0.0504509,-0.374333],"","",true,false],
	["CUP_O_Mi8_medevac_RU",[-184.416,-14.5693,-0.501953],332.696,1,0,[4.27566,1.44851],"","",true,false],
	["CUP_O_Ural_Refuel_RU",[-190.697,-56.2935,0.0489521],327.533,1,0,[-1.04058,4.30032],"","",true,false],
	["CUP_O_Mi24_V_RU",[-209.521,-33.021,-0.498285],29.887,1,0,[3.35981,1.08053],"","",true,false],
	["CUP_O_UAZ_Unarmed_RU",[-227.973,12.3569,0.0138283],145.732,1,0,[0.38848,-0.641331],"","",true,false]
];

moloscomposition = [
	["CUP_O_Su25_RU_3",[-17.2461,-2.29492,-0.31826],129.537,1,0,[7.90061,0.443107],"","",true,false],
	["CUP_O_Su25_RU_3",[-0.464844,17.4258,-0.311666],129.462,1,0,[7.58377,0.91025],"","",true,false],
	["CUP_O_Su25_RU_3",[15.7344,36.0977,-0.323229],129.797,1,0,[6.69854,0.655416],"","",true,false],
	["CUP_O_Su25_RU_3",[-64.4629,-43.2969,-0.291157],154.817,1,0,[8.70327,-1.41745],"","",true,false],
	["CUP_O_Su25_RU_3",[-81.5801,-51.3867,-0.31567],155.557,1,0,[7.96758,-0.385369],"","",true,false],
	["Land_Wreck_BMP2_F",[-113.695,-18.0781,-0.224667],0,1,0,[-6.01298,-3.37601],"","",true,false],
	["CUP_O_Su25_RU_3",[-102.52,-56.8672,-0.299522],163.989,1,0,[8.63318,0.651713],"","",true,false],
	["CUP_O_UAZ_MG_RU",[-131.957,-14.6816,-0.0631552],0.00997488,1,0,[1.05825,-0.697533],"","",true,false],
	["CUP_O_UAZ_MG_RU",[-135.408,-13.666,-0.0856314],0.0209317,1,0,[1.55142,0.150776],"","",true,false],
	["CUP_O_Su25_RU_3",[-122.881,-68.5957,-0.304241],153.433,1,0,[8.2,1.493],"","",true,false],
	["Land_Wreck_BRDM2_F",[-153.77,-4.68555,0.406794],0,1,0,[14.6457,9.62061],"","",true,false],
	["CUP_O_Ural_Empty_RU",[-146.457,-81.2793,0.0762863],90.0633,1,0,[-0.160224,-2.38298],"","",true,false],
	["CUP_O_Ural_Empty_RU",[-156.803,-61.7285,0.0812702],130.203,1,0,[2.32516,-1.01421],"","",true,false],
	["CUP_O_Ural_Refuel_RU",[-146.43,-88.7207,0.0635509],90.5992,1,0,[0.496098,-0.911815],"","",true,false],
	["CUP_O_Ural_Empty_RU",[-161.16,-66.0313,0.0669727],128.215,1,0,[2.0153,-0.632536],"","",true,false],
	["Box_IND_AmmoVeh_F",[-153.328,-83.7461,0.0193329],359.966,1,0.00556854,[-1.91247,-0.22846],"","",true,false],
	["Box_IND_AmmoVeh_F",[-153.414,-85.6426,0.0306549],359.997,1,0,[-0.687391,-0.23039],"","",true,false],
	["Box_IND_AmmoVeh_F",[-155.631,-81.6094,0.0326366],359.993,1,0,[-2.90139,-0.229438],"","",true,false],
	["Box_IND_AmmoVeh_F",[-153.559,-87.6172,0.0346203],0.00224945,1,0.00564461,[-0.983622,-0.224185],"","",true,false],
	["Box_IND_AmmoVeh_F",[-156.029,-83.8125,0.0201492],0.0456952,1,0.0052828,[-1.82738,-0.0713821],"","",true,false],
	["Land_Cargo20_light_green_F",[-169.137,-53.3418,0.00222206],223.315,1,0,[1.91735,1.18052],"","",true,false],
	["Box_IND_AmmoVeh_F",[-153.514,-89.9121,0.0307846],359.997,1,0,[-0.993046,0.0753848],"","",true,false],
	["Box_IND_AmmoVeh_F",[-156.117,-85.707,0.0329514],0.0377361,1,0.00496444,[-0.873537,0.0289169],"","",true,false],
	["Box_IND_AmmoVeh_F",[-156.258,-87.6816,0.0307674],359.997,1,0,[-0.993076,0.0753543],"","",true,false],
	["CUP_O_UAZ_Open_RU",[-165.309,-71.8359,0.0124111],124.838,1,0,[2.19188,-3.15959],"","",true,false],
	["Box_IND_AmmoVeh_F",[-156.217,-89.9766,0.0307808],359.998,1,0,[-0.992705,0.0751344],"","",true,false],
	["Land_Cargo20_cyan_F",[-172.881,-58.1582,0.0272026],216.887,1,0,[1.01698,0.242174],"","",true,false],
	["Land_Cargo40_yellow_F",[-177.904,-63.1445,-0.0124569],221.917,1,0,[2.72027,-0.441755],"","",true,false],
	["CUP_O_Mi8_SLA_2",[-151.596,-117.514,-0.450739],131.941,1,0,[5.91528,-0.677684],"","",true,false],
	["CUP_O_UAZ_Open_RU",[-171.533,-117.602,-0.0316448],359.924,1,0,[-1.76565,-0.632445],"","",true,false],
	["CUP_O_Mi24_V_RU",[-198.02,-124.461,-0.526402],129.047,1,0,[5.2167,-0.412363],"","",true,false],
	["CUP_O_UAZ_Open_RU",[-218.199,-144.033,0.0126858],42.1388,1,0,[-0.244224,-0.579581],"","",true,false],
	["CUP_O_Ural_Refuel_RU",[-245.723,-95.2031,0.0827408],133.716,1,0,[5.00808,3.20071],"","",true,false],
	["Land_i_Shed_Ind_F",[-224.492,-190.182,0.651608],133.767,1,0,[0,-0],"","",true,false],
	["CUP_O_Ural_Refuel_RU",[-210.475,-215.004,0.0730457],40.6038,1,0,[0.437051,-1.31649],"","",true,false],
	["CUP_O_Ural_Refuel_RU",[-216.123,-209.531,0.0443192],41.0861,1,0,[0.182193,-1.45938],"","",true,false],
	["CUP_O_Ural_Open_RU",[-221.932,-204.785,0.0684376],43.6595,1,0,[0.267872,-1.3698],"","",true,false],
	["Land_Shed_Small_F",[-213.117,-220.768,0.221199],314,1,0,[0,0],"","",true,false],
	["Land_ClutterCutter_large_F",[-104.525,-288.057,0],223.849,1,0,[0.392254,0.694335],"","",true,false],
	["Land_Wall_IndCnc_4_F",[-209.953,-223.498,-0.124104],44.5403,1,0,[0,0],"","",true,false],
	["Land_Airport_Tower_F",[-105.004,-289.166,0.354305],224.134,1,0,[0,0],"","",true,false],
	["CUP_O_UAZ_Open_RU",[-113.973,-287.574,0.0116062],359.997,1,0,[-1.11421,-1.54392],"","",true,false]
];