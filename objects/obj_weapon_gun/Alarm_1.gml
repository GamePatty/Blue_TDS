///Reload
var _gunAmmo,_gunAmmoLimit,_gunAmmoReload;

//Get Values
_gunAmmo = global.Weapon_A[_PlayerWeaponType,global.Weapon_Level[_PlayerWeaponType]];
_gunAmmoLimit = global.Weapon_AL[_PlayerWeaponType,global.Weapon_Level[_PlayerWeaponType]];
_gunAmmoReload = global.Weapon_AR[_PlayerWeaponType,global.Weapon_Level[_PlayerWeaponType]];
//if (_gunAmmo - _gunAmmoLimit < 0)
	{
	//Reload
	if ((_gunAmmo < _gunAmmoLimit) && (_gunAmmoReload > _gunAmmoLimit))
		{
		_gunAmmoReload -= (_gunAmmoLimit - _gunAmmo);
		_gunAmmo += (_gunAmmoLimit - _gunAmmo);
		}
		
		alarm[1] = -1;
	_gunAmmoReload = clamp(_gunAmmoReload,0,global.Weapon_AR[_PlayerWeaponType,global.Weapon_Level[_PlayerWeaponType]])
	//Swap Values
	global.Weapon_A[_PlayerWeaponType,global.Weapon_Level[_PlayerWeaponType]] = _gunAmmo;
	global.Weapon_AR[_PlayerWeaponType,global.Weapon_Level[_PlayerWeaponType]] = _gunAmmoReload;
	reloading = false;
	}   