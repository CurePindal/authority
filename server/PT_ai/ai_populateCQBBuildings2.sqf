//// by tankbuster
// tripwire mine system by almaniak
 #include "..\includes.sqf"
_myscript = "ai_populatecqbbuildings2";
__tky_starts
params [
	["_cqbcentrepos", cpt_position],
	["_cqbradius", cpt_radius],
	["_amount", 0.66],// chance each building will be populated
	["_scalebyplayercount", false]// if true, number of poss in each house is playercount * 2
	];
private ["_nreadblds1","_cqbcentrepos","_cqbradius","_nreadblds3","_nreadblds2","_myblding","_amount","_cqbbldposs","_cqbbldposs1","_cqbgrp","_cqbman","_d","_curobsfactor","_elligableTripMineBuildings","_building","_localPos","_dir","_m","_minedir","_currentTripMinesBuild","_bdng","_minepos","_mindist","_nearestdoor","_nearestmine","_mydoor","_sound_source","_spmine","_spdoor","_spbldng", "_mydist", "_mydoorpos"];
_nreadblds1 = ((_cqbcentrepos) nearObjects ["house", _cqbradius]) select {((count (_x buildingpos -1)) > 6)};
_nreadblds3 = ((_cqbcentrepos) nearObjects ["house", _cqbradius]) select {((count (_x buildingpos -1)) > 4)};
if ((count _nreadblds1) < 8) then
	{
		_nreadblds1 = ((_cqbcentrepos) nearObjects ["house", _cqbradius + 15]) select {((count (_x buildingpos -1)) > 4)};
		diag_log format ["***pcqb2 got few buildings to populate, so increased radius and allowed smaller buildings"];
	};
_nreadblds2 = _nreadblds1 call BIS_fnc_arrayShuffle;
if (count _nreadblds2 > 20) then
	{
		_nreadblds2 resize 20;
	};
{
	_myblding = _x;
	if ((random 1) > _amount) then
		{
			_cqbbldposs = (_myblding buildingPos -1) select {[atltoasl _x] call tky_fnc_inhouse};
			_cqbbldposs1 = _cqbbldposs call BIS_fnc_arrayShuffle;
			/*if ((count _cqbbldposs1) > 10) then
				{
					_cqbbldposs1 resize 10;
				};*/
			_cqbbldposs1 resize (ceil (count _cqbbldposs1 /2));
			//diag_log format ["*** in building %1, a %2, there are %3 non roofed poses", _myblding, typeof _myblding, count _cqbbldposs1];
			// ^^^ all the non roof positions in the house
			{
				_cqbgrp = createGroup [east, true];
				_cqbman = _cqbgrp createUnit [(selectRandom opfor_CQB_soldier), _x, [],0,"NONE"];
				[_cqbman, true, true] call tky_fnc_tc_setskill;
				_cqbman dowatch (_cqbman getpos [10,(_cqbman getdir _myblding)]);
				//diag_log format ["*** cqbman spawned at %1", getpos _cqbman];
				for "_d" from 0 to 359 step 45 do
					{//find the view direction that isnt obscured by a building
						_curobsfactor = lineIntersectsObjs [eyePos _cqbman, ATLToASL (_cqbman getpos [10,_d]), objNull, _cqbman, true, 32];
						if (_curobsfactor isEqualTo []) then
							{
								//diag_log format ["*** fella at %1 in the %2 is going to look %3", getpos _cqbman, typeof _myblding, _d];
								_cqbman doWatch (_cqbman getpos [5, _d]);
							};
					};
			} foreach _cqbbldposs1;
		};
} foreach _nreadblds2;
_elligableTripMineBuildings = [
["Land_i_House_Big_01_V2_F",[[[-0.8,-5.5,-2.5], - 90],[[4.5,5,-2.5], + 90]]],
["Land_u_House_Big_01_V1_F",[[[-0.8,-5.5,-2.5], - 90],[[4.5,5,-2.5], + 90]]],
["Land_i_House_Big_02_V2_F",[[[0,4,-2.5], 0],[[-2.5,-3,-2.5], 0]]],
["Land_i_House_Big_02_V1_F",[[[0,4,-2.5], 0],[[-2.5,-3,-2.5], 0]]],
["Land_Shed_02_F", [[[0,-1.0,-0.8],0]]],
["Land_Shed_05_F", [[[-0.4,1.4,-0.7],0]]],
["Land_House_Small_02_F", [[[0.6,-1.7,-0.5], +90],[[0.5,4.6,-0.5], +90]]],
["Land_House_Small_01_F", [[[4.2,3.4,-0.4], 0],[[1.1,-0.1,-0.4], +90]]],
["Land_House_Small_03_F", [[[-0.7,-2,-1],0 ],[[2.8,3.4,-1], 90]]],
["Land_House_Small_05_F", [[[0,-0.9,-0.7], 0],[[-3.6,0.7,-0.7], 90]]],
["Land_Slum_01_F", [[[-0.7,-0.7,1],90]]],
["Land_House_Small_06_F", [[[-4.2,-1.6,-0.7], 270], [[0.8,1.9,-0.7], 0]]],
["Land_Slum_03_F", [[[3.6,-1,-0.2], 0], [[-2.7,-1.23,-0.2],0]]],
["Land_House_Small_04_F", [[[2.4,-4.6,-0.7],0], [[-0.6,4.2,-0.7],0], [[-2.1,-0.6,-0.7], 90]]],
["Land_House_Big_01_F", [[[6,5.8,-0.8],0], [[2.8,-1.2,-0.8],0]]],
["Land_Shop_Town_03_F", [[[2.8,-6.1,-3],0], [[-3.2,-6.1,-3],0] ,[[-3,7.7,-3],0]]],
["Land_Shop_Town_01_F", [[[0,-4.1,-3],0], [[-1.8,5.9,-3],0] ]],
["Land_u_House_Small_02_V1_F", [[[-3.2,-1.6,-2.2],0]]],
["Land_i_Stone_HouseSmall_V2_F",[[[-7.9,-0.5,-0.3],0], [[7.1,-0.25,-0.25],0]]],
["Land_i_House_Small_02_V3_F", [[[-2.8,-1.4,-0.1], 90]]],
["Land_i_Stone_HouseSmall_V1_F",[[[-7.6,-0.3,-0.2],0], [[7.,-0.4,-0.2],0]]],
["Land_i_House_Small_02_V2_F",[[[-3.1,-1.7,-0.5],0]]],
["Land_i_Stone_HouseSmall_V3_F",[[[-7.8,-0.5,-0.2],0], [[6.6,-0.5,-0.2],0]]],
["Land_i_House_Big_02_V3_F", [[[0.4,4.7,-2.4],0], [[-2.70703,-3.70801,-2.35783],0] ]],
["Land_i_Shed_Ind_F",[[[-7.8,-1.4,-1],0], [[14.4,-1.6,-1.1],0]]]

];
AM_fnc_CreateMine = {
	params ["_building","_localPos","_dir"];
	_m = createMine ["APERSTripMine", (_building modelToWorld _localPos) ,[], 0];
	// Add mine to cleanup array;
	CQBCleanupArr pushBack _m;
	pt_tripmines pushback _m;
	[_m, "mymine"] call fnc_setvehiclename;
	_minedir = ((getdir _building)+ _dir);
	[mymine, _minedir] remoteExec ["setdir"];
	_m
};
_currentTripMinesBuild = 0;
{
	// Array structure is [["Land_i_House_Big_01_V2_F",[[[-0.8,-5.5,-2.5], - 90],[4.5,5,-2.5], + 90]]];
	//                       classname			pos relative to building, dir relative to building
	_bdng = _x;
	{
		//diag_log FORMAT ["***populateCQBBuildings: checking house %1 for %2 is %3",(_x select 0), (typeOf _bdng), (_x select 0) isEqualTo (typeOf _bdng)] ;
		if ( (_x select 0) isEqualTo (typeOf _bdng) ) then
		{
			//diag_log format ["*** cqb2 tripmine found a %1", _x];
			{
				//diag_log FORMAT ["***populateCQBBuildings: Placing tripwire in %1 at %2 and %3", (typeOf _bdng), (_x select 0), (_x select 1)] ;
				if ((random 1) > 0.9) then
				{
					_mymine = [_bdng, _x select 0, _x select 1] call AM_fnc_CreateMine;
					//diag_log format ["*** cqb2 mine %1 is at %2, dir is %3", _m, getpos _m, getdir _m];
					if (testmode) then {[getpos _m] execVM "server\Debug\debug_makemarker.sqf";};
					_mindist = 10;
					_nearestdoor = objNull;
					{
						_mydist = _mymine distance2d (_bdng modelToWorld (_bdng selectionPosition _x));
						if (_mydist < _mindist) then
							{
								_mindist = _mydist;
								_nearestdoor = _x;
								_mydoorpos = (_bdng modelToWorld (_bdng selectionPosition _x));
							};
					} foreach ["door_1", "door_2", "door_3"];// find the nearest door to each mine
					if (_mindist < 2) then
						{
							_nearestmine = nearestobject [_mydoorpos, "timebombcore"];
							_mydoor = _nearestdoor + "_sound_source";
							[_nearestmine, _mydoor, _bdng] spawn
								{
									params ["_spmine","_spdoor", "_spbldng"];
									//diag_log format ["*** spawned doorwatcher gets mine %1, door %2, building %3", _spmine, _spdoor, _spbldng];
									while {alive _spmine} do
										{
											sleep 0.5;
											if (not ((_spbldng animationSourcePhase _spdoor) isEqualTo 0)) then
												{
													//diag_log format ["***dooropening, detting mine %1 near door %2 in building %3", _spmine, _spdoor, _spbldng];
													sleep random 1;
													_spmine setdamage 1;
												};
										};


								};
						};
				};
			} forEach (_x select 1);
			_currentTripMinesBuild = _currentTripMinesBuild + 1;
		};





	} forEach _elligableTripMineBuildings;
} forEach _nreadblds3;
handle_ai_pcqb_finished = true;
__tky_ends
