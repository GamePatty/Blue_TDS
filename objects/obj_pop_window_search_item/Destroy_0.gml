/// @description Destroy the children's also

//destroy the buttons
instance_destroy(button_take);
instance_destroy(button_leave);

//Check if the loot item still exists, if yes then destroy it we dont want it
if (item != noone)
	{
	instance_destroy(item);
	}
	
instance_activate_all();//Activare all instances