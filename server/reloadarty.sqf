//by tankbuster
 #include "..\includes.sqf"
_myscript = "reloadarty";
__tky_starts;
while {((alive arty) and (canfire arty))} do
	{
	sleep 5;
	switch (true) do
		{
		case (!("32Rnd_155mm_Mo_shells" in magazines arty)):
			{
				//["Artillery is winchester 155 mike mike and is reloading. Please wait 1 minute."] call tky_fnc_usefirstemptyinhintqueue;
				"Artillery support units are winchester 155 mike mike and is reloading. Please wait 1 minute." remoteexecCall ["tky_fnc_usefirstemptyinhintqueue",2,false];
				sleep 60;
				arty addmagazines ["32Rnd_155mm_Mo_shells",32];
							};
		case (!("2Rnd_155mm_Mo_guided" in magazines arty)):
			{
				//["Artillery is winchester 155 mike mike guided and is reloading. Please wait 1 minute."] call tky_fnc_usefirstemptyinhintqueue;
				"Artillery units are winchester 155 mike mike guided and is reloading. Please wait 1 minute." remoteexecCall ["tky_fnc_usefirstemptyinhintqueue",2,false];
				sleep 60;
				arty addmagazines ["2Rnd_155mm_Mo_guided",2];
			};
		case (!("6Rnd_155mm_Mo_smoke" in magazines arty)):
			{
					//["Artillery is winchester smoke rounds and is reloading. Please wait 1 minute."] call tky_fnc_usefirstemptyinhintqueue;
				"Artillery units are winchester smoke rounds and is reloading. Please wait 1 minute." remoteexecCall ["tky_fnc_usefirstemptyinhintqueue",2,false];
				sleep 60;
				arty addmagazines ["6Rnd_155mm_Mo_smoke",2];
			};
		case (!("2Rnd_155mm_Mo_LG" in magazines arty)):
			{
				//["Artillery is winchester laser guided rounds and is reloading. Please wait 1 minute."] call tky_fnc_usefirstemptyinhintqueue;
				"Artillery units are winchester laser guided rounds and is reloading. Please wait 1 minute." remoteexecCall ["tky_fnc_usefirstemptyinhintqueue",2,false];
				sleep 60;
				arty addmagazines ["2Rnd_155mm_Mo_LG",2];
			};
		};
	};
diag_log "reloadarty quits because arty unit is dead or can't fire";
__tky_ends