//by tankbuster
 #include "..\includes.sqf"
 __tky_starts
_myscript = "sm_repbld_action";
private ["_tempbldpos","_tempbld"];
while {true} do
	{
	waitUntil {sleep 10; startrlbaction};
	sleep 0.5;
	tempbldpos = getpos surfacebld;
	tempbldpos set [2,-24];
	tempbld = createvehicle [(typeof deepbld), tempbldpos,[],0,"CAN_COLLIDE"];
	tempbld setVectorUp [0,0,1];
	diag_log format ["*** Polygon corners are at %1", polyarray];
		[
		surfacebld,
		"Repair/Rebuild building.",
		"pics\holdAction_rebuild_ca.paa",
		"\a3\ui_f\data\IGUI\Cfg\actions\settimer_ca.paa",
		"(position player) inPolygon polyarray",
		"(position player) inPolygon polyarray",
		{},
		{tempbld setpos [tempbldpos select 0, tempbldpos select 1, (_this select 4) - 24]},
		{hint "Repair complete!"; deletevehicle tempbld; deepbld setdamage 0;},
		{tempbld setpos [tempbldpos select 0, tempbldpos select 1, -24]},
		[],
		(if (count (player nearentities [repvecs,5]) > 0) then {6} else {12}),
		nil,
		true,
		false
		] call BIS_fnc_holdActionAdd;
	// wait until player gets down from scaf (or dies) , then delete it?
	waitUntil {sleep 5; !missionactive};
	};


__tky_ends