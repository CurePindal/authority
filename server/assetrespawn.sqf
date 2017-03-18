//by tankbuster
 #include "..\includes.sqf"
_myscript = "assetrespawn.sqf";
private ["_myscript","_oldv","_newv","_respawns","_droppoint","_forget","_nul","_typefpv","_typefob","_droppoint2","_respawns2","_testradius","_nearestblueflag","_nearestbluflags","_nearestblueflagssorted", "_sortedblueflags"];
// execvmd by the vehiclerespawn module or the mpkilled eh on the vehicles
__tky_starts;
if (not isServer) exitWith
	{
	diag_log "*** assetrespawn runs on a not server so will quit and exec remote to the server";
	[[_this select 0], "server\assetrespawn.sqf"] remoteexec ["execVM", 2];
	};

if (isServer) then {diag_log "***assetrespawn runs on the server!"};
if (isDedicated) then {diag_log "***assetrespawn runs on dedicated!"};
if (hasInterface) then {diag_log "***assetrespawn runs on client!"};

_oldv = _this select 0;
switch (_oldv) do
	{
	case forward: {_typefpv = true; _typefob = false;};
	case fobveh: {_typefpv = false; _typefob = true;};
	default {_typefpv = false; _typefob = false};
	};
if (_typefpv) then
	{
	forwardrespawning = true;
	publicVariable "forwardrespawning";
	forwardrespawnpositionid call bis_fnc_removeRespawnPosition;
	};
if (_typefob) then
	{
	fobrespawning = true;
	publicVariable "fobrespawning";
	if (fobdeployed) then
		{
		fobrespawnpositionid call bis_fnc_removeRespawnPosition;
		};//if the fob is deployed, remove its respawn id
	};
_respawns = [west] call bis_fnc_getRespawnPositions;
_respawns2 = _respawns - [_oldv];
if ((count blueflags) > 1) then
	{
	_sortedblueflags = [blueflags, [],{_oldv distanceSqr _x}, "ASCEND" ] call BIS_fnc_sortby;
	blueflags = _sortedblueflags;
	};
_nearestblueflag = blueflags select 0;

_droppoint2 = [0,0,0];
_testradius = 2;
while {((_droppoint2 in [[0,0,0], islandcentre]) or (surfaceIsWater _droppoint2) or (((nearestObject [_droppoint2, "LandVehicle"]) distanceSqr _droppoint2) < 2.2))} do
	{
		_droppoint2 = [(getpos _nearestblueflag), 4,_testradius, 7, 0,0.25,0] call bis_fnc_findSafePos;
		_testradius = _testradius * 2;
	};
// ^^^ system that gets a good droppos without the possibility of findsafepos returning islandcentre (which is does when it fails)
sleep 1;
switch (true) do
	{
	case _typefpv:
		{
		_nul = [_droppoint2, blufordropaircraft, forwardpointvehicleclassname, "This is to replace the vehicle that's just been destroyed." ] execVM "server\spawnairdrop.sqf";
		diag_log "***ar calls a fpv";

		forwardrespawning = false;
		publicVariable "forwardrespawning";
		};
	case _typefob:
		{
		_nul = [_droppoint2, blufordropaircraft, fobvehicleclassname, "A replacement vehicle is being delivered." ] execVM "server\spawnairdrop.sqf";
		diag_log "***ar calls a fob";
		fobrespawning = false;
		publicVariable "fobrespawning";
		};
	default {diag_log "***default"};
	};
sleep 8;
__tky_ends
