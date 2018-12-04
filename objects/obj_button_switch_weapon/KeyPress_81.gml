/// @description Switch
if (instance_exists(obj_weapon_axe))
	{
	instance_deactivate_object(obj_weapon_axe);
	instance_activate_object(obj_weapon_gun);
	}
	else
	{
	instance_activate_object(obj_weapon_axe);
	instance_deactivate_object(obj_weapon_gun);
	}