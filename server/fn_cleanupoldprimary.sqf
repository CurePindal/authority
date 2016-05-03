//by tankbuster
_myscript = "cleanupoldprimary";
diag_log format ["*** %1 starts %2,%3", _myscript, diag_tickTime, time];
if (isNull previousmission) exitWith {diag_log "***cleanupoldprimary exits because previous mission is null!"};
{
	if ((_x distance (getpos previousmission)) < 400 ) then
	{
	deletevehicle _x;
	};
}foreach allDead;
// ^^ finds and deletes all dead vehicles and men
{
	if ((faction _x) isEqualTo "CUP_B_GB" ) then
	{
	comment "do nothing";
	}
	else
	{
	deleteVehicle _x;
	};
} foreach  ((getpos previousmission) nearEntities ["LandVehicle", 500]);
// ^^ finds and delete civ and russian cars/tanks . leaves anything british

{deleteVehicle _x} foreach (nearestObjects [previousmission,["Civilian_F", "CUP_Creatures_Civil_Chernarus_Base"], 500]);
// ^^ finds and deletes civilian men. any in cars/tanks etc will have been ejected when their veh was deleted earlier.

{deleteGroup _x} foreach allGroups;

diag_log format ["*** %1 ends %2,%3", _myscript, diag_tickTime, time];