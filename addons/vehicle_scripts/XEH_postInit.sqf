#include "script_component.hpp"

["16aa_vehicles_setWeaponTurretGPMG", {
    params ["_vehicle", "_add"];

    if (_add) then {
        _vehicle addWeaponTurret ["16aa_GPMG_veh",[0]];
    } else {
        _vehicle removeWeaponTurret ["16aa_GPMG_veh",[0]];
    };
}] call CBA_fnc_addEventHandler;

["16aa_vehicles_addMagazine", {
    params ["_vehicle", "_magazine","_turretIndex"];

    _vehicle addMagazineTurret [_magazine,_turretIndex];


}] call CBA_fnc_addEventHandler;

["16aa_vehicles_removeMagazine", {
    params ["_vehicle", "_magazine","_turretIndex"];

    _vehicle removeMagazineTurret [_magazine,_turretIndex];

}] call CBA_fnc_addEventHandler;

["16AA", "16AA_Key_Reload_Vehicle_Weapon", localize LSTRING(ReloadWeapon),
{
     [ACE_player, vehicle ACE_player] call FUNC(resupplyAmmo);
     vehicle ACE_player;
},
{false},
[19, [false, true, false]]] call cba_fnc_addKeybind;