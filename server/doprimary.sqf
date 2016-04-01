//by tankbuster
_myscript = "doprimary.sqf";
diag_log format ["*** %1 starts %2,%3", _myscript, diag_tickTime, time];
private ["_airfieldfilternames","_foundairfields","_locs","_currentprimarytarget","_thisscript", "_ptarget", "_npt"];
vehiclecleanup= []; mancleanup = []; roadblockreturndata = nil; roadblockscleared = false;
sleep 5;
if (primarytargetcounter > 1) then
	{
	// 2nd, 3rd , 4th targets, etc
	_npt = [cpt_position] execVM "server\choosenextprimary.sqf";// creates global variable nextpt which is a logic
	waitUntil {scriptDone _npt};
	sleep 0.5;
	primarytarget = nextpt;// <-- dont forget nextpt is a logic
	_handle = [primarytarget] execVM "server\spawnroadblocks.sqf";
	waitUntil {sleep 1;(!(isnil "roadblockreturndata"))};
	}else
	{
	roadblockscleared = true;// this is the first target, no roadblocks so set it to true so it's ignored
	};
reinforcementcounter = 0;
cpt_position = getpos nextpt;
cpt_radius = (nextpt getVariable "targetradius");
cpt_type = (nextpt getVariable "targettype");
civkillcount = 0;
primarytarget = nextpt;
_handle1 = [primarytarget] execVM "server\spawnprimarytargetunits.sqf";//<< must send a target logic, ie on with variables stored on it
waitUntil {scriptDone _handle1};
_flagpos = [cpt_position,0,20,0,0,20,0] call bis_fnc_findSafePos;
cpt_flag = "Flag_Red_F" createVehicleLocal _flagpos;
// create a marker
cpt_marker = createMarker [str primarytargetcounter, cpt_position];
cpt_marker setMarkerShape "ELLIPSE";
cpt_marker setMarkerType "Flag";
cpt_marker setMarkerSize [cpt_radius,cpt_radius];
cpt_marker setMarkerColor "ColorRed";
// make trigger that senses when town is empty of enemies
trg2 = createTrigger ["EmptyDetector", cpt_position];
trg2 setTriggerArea [(cpt_radius + 200),(cpt_radius + 200),0,false];
trg2 setTriggerActivation  ["EAST", "NOT PRESENT", false];
trg2 setTriggerStatements ["this", "diag_log '***all east dead'", ""];

trg3 = createTrigger ["EmptyDetector", cpt_position];
trg3 setTriggerArea [(cpt_radius + 200),(cpt_radius + 200),0,false];
trg3 setTriggerActivation  ["EAST", "NOT PRESENT", false];
trg3 setTriggerStatements ["((!(alive pt_radar)) and (roadblockscleared) and (triggerActivated trg2))", "execVM 'server\primarytargetcleared.sqf'", ""];

// task stuff
taskname = "task" + str primarytargetcounter;
[west, [taskname], ["Clear the target of all enemy forces", "Clear target of enemy forces","cpt_marker"], cpt_position,1,2,true ] call bis_fnc_taskCreate;
if ((primarytargetcounter == 1) or (cpt_type != 1)) then {roadblockscleared = true};
if ((primarytargetcounter > 1)) then
	{if ((roadblockreturndata select 4) > 0) then // if this isnt the first target and it has roadblocks spawned
		{
		0 spawn	{
			while {!roadblockscleared} do
				{
				sleep 10;
				deadgatecount = 0;
					{
					if ((_x animationPhase "Door_1_rot" == 0) or (!alive _x) or ((damage _x) > 0.8)) then {deadgatecount = deadgatecount +1};
					} foreach roadblockgates;
				if (deadgatecount == (count roadblockgates)) then
					{
					roadblockscleared = true;
						{
						_mytruck = _x;
						{_mytruck deleteVehicleCrew _x}foreach (crew _mytruck);
						deleteVehicle _mytruck; roadblockgates = [];
						} foreach roadreinforcementvehicles;
					roadreinforcementvehicles = [];
					}
				//diag_log format ["***roadblock status %1 cleared of %2", deadgatecount, count roadblockgates];
				};

			};
		};
		if (cpt_type==1) then {0 = execVM "server\roadreinforcementmanager.sqf";};
	};
// air radar controls the opfor reinforcements that are bought in by helicopter
//_radarpos = [cpt_position,0,(cpt_radius + 100),9,0,10,0] call bis_fnc_findSafePos;
_radarpos = [] call tky_fnc_findhighground;
_radartype = selectRandom  ["rhs_prv13", "rhs_p37", "rhs_gaz66_r142_msv"];
pt_radar = createVehicle [_radartype, _radarpos,[],0,"NONE"];
if (_radartype isEqualTo "rhs_gaz66_r142_msv") then {[pt_radar, 1, true] call RHS_fnc_gaz66_radioDeploy};
0 = execVM "server\airreinforcementmanager.sqf";

//stuff that needs to be check constantly runs here

diag_log format ["*** %1 ends %2,%3", _myscript, diag_tickTime, time];