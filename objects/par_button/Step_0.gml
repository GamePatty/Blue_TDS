/// @description Hover

var mx = scr_mouse_gui_x(device_mouse_raw_x(0));
var my = scr_mouse_gui_y(device_mouse_raw_y(0));

if position_meeting(mx,my,id){
	image_blend = c_gray;
	}
	else
	{
	image_blend = c_white;
	}