#define filename "playerrevived.sqf"
_thisscript = "playerrevived.sqf";
diag_log format ["*** %1 starts %2,%3", _thisscript, diag_tickTime, time];
[player , [uiNamespace, "reviveloadout"]] call bis_fnc_loadInventory;

hint "prerviveloadout applied!"


diag_log format ["*** %1 ends %2,%3", _thisscript, diag_tickTime, time];
