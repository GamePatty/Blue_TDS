/// @description Step
if  (instance_exists(obj_weapon_axe))
	{
    instance_activate_object(obj_button_light_melee);			
    instance_activate_object(obj_button_heavy_melee);	
    instance_activate_object(obj_button_roll);		
	instance_deactivate_object(obj_analog_aim);		
	instance_deactivate_object(obj_weapon_gun);		
	}
	else
	{
	instance_activate_object(obj_analog_aim);
    instance_deactivate_object(obj_button_light_melee);			
    instance_deactivate_object(obj_button_heavy_melee);	
    instance_deactivate_object(obj_button_roll);	
    instance_deactivate_object(obj_weapon_axe);			
	}
	