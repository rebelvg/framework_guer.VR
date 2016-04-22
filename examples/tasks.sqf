//https://community.bistudio.com/wiki/Arma_3_Tasks_Overhaul

/*
//creates task, waits until the hostage is 50m from the base marker, completes task

[BluFor, "blufor_task_01", ["Task description.", "Hostage Rescue"], hostage, "ASSIGNED", 0, true, "Default"] call BIS_fnc_taskCreate;

waitUntil {
	hostage distance getMarkerPos "base_marker" < 50
};

["blufor_task_01", "Succeeded", true] call BIS_fnc_taskSetState;
*/

/*
//waits until objects are not alive

_objArray = [obj_01, obj_02, obj_03];

[BluFor, "blufor_task_02", ["Task description.", "Search And Destroy"], "task_02_marker", "ASSIGNED", 0, true, "Default"] call BIS_fnc_taskCreate;

waitUntil {
	{alive _x} count _objArray == 0
};

["blufor_task_02", "Succeeded", true] call BIS_fnc_taskSetState;
*/

/*
//waits until at least one player is 50m from the objective marker

[BluFor, "blufor_task_03", ["Task description.", "Visit Position"], "task_03_marker", "ASSIGNED", 0, true, "Default"] call BIS_fnc_taskCreate;

waitUntil {
	{_x distance getMarkerPos "task_03_marker" < 50} count allPlayers > 0
};

["blufor_task_03", "Succeeded", true] call BIS_fnc_taskSetState;
*/

/*
//waits until more than 80% of players (not spectators) are 50m from the base marker

[BluFor, "blufor_task_04", ["Task description.", "RTB"], "base_marker", "ASSIGNED", 0, true, "Default"] call BIS_fnc_taskCreate;

waitUntil {
	{_x distance getMarkerPos "base_marker" < 50} count allPlayers > ({!isObjectHidden _x} count allPlayers) * 0.8
};

["blufor_task_04", "Succeeded", true] call BIS_fnc_taskSetState;
*/

/*
//this block will spawn a thread that will end a mission if everyone is dead (aka spectating)

[] spawn {
	waitUntil {
		{isObjectHidden _x} count allPlayers == count allPlayers && count allPlayers > 0
	};
	
	[{
		["Failed1", false, true, true] call BIS_fnc_endMission;
	},"BIS_fnc_spawn"] call BIS_fnc_MP;
};
*/

/*
//waits until there's no east side units in the 500 radius of the attach marker
//checks if at least one of the players is around too (to prevent auto-completion if using dac or alive or other dynamic ai spawn systems)

[BluFor, "blufor_task_05", ["Task description.", "Clear Area"], "attack_marker", "ASSIGNED", 0, true, "Default"] call BIS_fnc_taskCreate;

waitUntil {
	{side _x == EAST && _x distance2d getMarkerPos "attack_marker" < 500} count allUnits == 0 && {_x distance2d getMarkerPos "attack_marker" < 500} count allPlayers > 0
};

["blufor_task_05", "Succeeded", true] call BIS_fnc_taskSetState;
*/

/*
//waits until there's more players in the 500m area then east side units
//task already implies that players should be in the area

[BluFor, "blufor_task_06", ["Task description.", "Overrun Area"], "overrun_marker", "ASSIGNED", 0, true, "Default"] call BIS_fnc_taskCreate;

waitUntil {
	{_x distance2d getMarkerPos "overrun_marker" < 500} count allPlayers > {side _x == EAST && _x distance2d getMarkerPos "overrun_marker" < 500}
};

["blufor_task_06", "Succeeded", true] call BIS_fnc_taskSetState;
*/

/*
//call mission completed
[{
	["Completed1", true, true, true] call BIS_fnc_endMission;
},"BIS_fnc_spawn"] call BIS_fnc_MP;
*/

/*
//call mission failed
[{
	["Failed1", false, true, true] call BIS_fnc_endMission;
},"BIS_fnc_spawn"] call BIS_fnc_MP;
*/
