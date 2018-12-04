/// @description Coliideed with player
if !instance_exists(obj_pop_window_search_item) && popUp == true
	{
	var win = instance_create_layer(x,y,"Instances_HUD",obj_pop_window_search_item); //Create the window                                                                 //Send our id to win
	popUp = false;                                                                    //Can't Create the popUp Now
	alarm[1] = room_speed * 3;                                                       //Reactivate the popUp after 3 sec
	//instance_deactivate_all(true);                                                   //Deactivate all the instance
	//instance_activate_object(win);                                                   //Deactivate all the instance
	with(win){item = instance_id;}
	}
	