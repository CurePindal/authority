//by tankbuster
_myscript = "ai_airsupportmanager";
diag_log format ["*** %1 starts %2,%3", _myscript, diag_tickTime, time];
private ["_opforairsupportgroup","_startpos","_chosenveh","_opforairsupport","_opforairsupportveh","_dir"];

while {(alive pt_hq) and ((playersNumber west) > 0)} do
	{
	sleep 600 + ((floor random 30) * 60); // 10 to 40 mins
	_opforairsupportgroup = createGroup east;

	_startpos = primarytarget getrelpos [(4000 + ((random 8) * 500)), random 360 ];
	_startpos set [2,800];
	_chosenveh = selectRandom opforairsupporttypes;
	_opforairsupport = [_startpos, (_startpos getdir primarytarget ), _chosenveh, _opforairsupportgroup] call BIS_fnc_spawnVehicle;
	[_opforairsupportgroup, [1,1,1,0.40,1,1,0.40,0.50,1,0.50], false,0] call tky_fnc_tc_setskill;
	{_opforairsupportgroup reveal [_x,(random 4)];} foreach (allPlayers - entities "HeadlessClient_F");
	_opforairsupportveh = _opforairsupport select 0;
	_t_ehindex = _opforairsupportveh addeventhandler ["HandleDamage", {if ((_this select 4) isKindOf "MissileCore") then { 1; } else { _this select 2; }; }];
	_opforairsupportveh setfuel 0.05;
	_opforairsupportveh addEventHandler ["Fuel", "if not(_this select 1) then {(_this select 0) setdamage 1};"];
	_opforairsupportveh setVelocity [200 * (sin direction _opforairsupportveh), 200 * (cos direction _opforairsupportveh), 0];
	_opforairsupportgroup setCombatMode "RED";
	_wp1 = _opforairsupportgroup addWaypoint [primarytarget, 300];
	_wp1 setWaypointBehaviour "COMBAT";
	_wp1 setWaypointSpeed "NORMAL";
	_wp1 setwaypointtype "SAD";
	_wp1 setWaypointFormation "COLUMN";
	if (_opforairsupportveh isKindOf "Plane") then {_opforairsupportveh flyInHeight 200} else {_opforairsupportveh flyInHeight 100};
	_wp2 = _opforairsupportgroup addWaypoint [forward, 300];
	_wp2 setWaypointBehaviour "COMBAT";
	_wp2 setWaypointSpeed "NORMAL";
	_wp2 setwaypointtype "SAD";
	_wp2 setWaypointFormation "COLUMN";

	_wp3 = _opforairsupportgroup addWaypoint [pt_radar , 0];
	_wp3 setwaypointtype "COMBAT";
	_wp3 setWaypointSpeed "NORMAL";
	_wp3 setwaypointtype "CYCLE";
	diag_log format [ "*** aasm spawn %1 at %2", _chosenveh, _startpos];
	//if (true) exitWith {};
	};



diag_log format ["*** %1 ends %2,%3", _myscript, diag_tickTime, time];