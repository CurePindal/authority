//finds a random highground position in or near the current primary target
// by tankbuster
private ["_max","_highestpossofar","_y","_cpos","_highobject","_dif"];
_max = 0;
_highestpossofar = cpt_position;

for "_y" from 0 to (15 + (floor random 15)) do
	{
	_cpos =  [cpt_position, (cpt_radius + (cpt_radius /3)), 0, 100] call bis_fnc_findOverwatch;
	_highobject = "Sign_Arrow_F" createVehicleLocal _cpos;
	_dif = (((getposASL _highobject) select 2) - ((getposASL cpt_flag) select 2));
	if (_dif > _max) then
		{
		_max = _dif;
		_highestpossofar = _cpos;

		};
	deleteVehicle _highobject;
	};
_highestpossofar set [2,0];
_highestpossofar