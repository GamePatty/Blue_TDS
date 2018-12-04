/// @description Inherit the parent event
event_inherited();

//Destroy the parent from the game room
//this will trigger the parent's destroy event which will kill all 
//the childrens of that parent

var mx = scr_mouse_gui_x(device_mouse_raw_x(0));
var my = scr_mouse_gui_y(device_mouse_raw_y(0));

if position_meeting(mx,my,id){
	//Add the item in the inventory and destroy the instance from the game room
	 show_debug_message("Leave Button Pressed")
		instance_destroy(obj_pop_window_search_item);
   }		