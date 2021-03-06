// Reset the buildlist

//cur removeEventHandler ["CuratorObjectRegistered", 0];

// Set explicit objects
cur addEventHandler [
	"CuratorObjectRegistered",
	{
		_classes = _this select 1;
		_costs = [];
		{
			_cost =
			switch (_x) do {
				case "B_static_AA_F": {[true,0.3]};
				case "B_HMG_01_high_F": {[true,0.5]};
				case "B_static_AA_F": {[true,0.1]};
				case "B_Mortar_01_F": {[true,0.2]};
				case "Land_BagBunker_Small_F": {[true,0]};
				case "Land_BagFence_Corner_F": {[true,0]};
				case "Land_BagFence_End_F": {[true,0]};
				case "Land_BagFence_Long_F": {[true,0]};
				case "Land_BagFence_Round_F": {[true,0]};
				case "Land_BagFence_Short_F": {[true,0]};
				case "Land_HelipadSquare_F":{[true,0]};
				default {[false,0]};
			};
			_costs = _costs + [_cost];
		} forEach _classes;
		_costs
	}
];

cur addCuratorPoints -(curatorPoints cur);
cur addCuratorPoints 1;