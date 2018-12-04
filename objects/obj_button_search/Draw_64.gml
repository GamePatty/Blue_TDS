/// @description  Inherit the parent event
event_inherited();

///get camera coords
var cx = camera_get_view_x(view_camera);
var cy = camera_get_view_y(view_camera);

///make the adjustment to gui
var xx = ((obj_player.x - 16)- cx);
var yy = ((obj_player.y - 32) - cy);
draw_set_halign(fa_left);
///Start Drawing stuffs
var w,h;
if (searchable != noone)
	{
	w  = 32;
	h  = 4;
	if (searchStatus > 0)
		{
		//draw_line_width_color(xx,yy,(xx + 32)*(50/100),yy,2,c_green,c_green);
		draw_healthbar(xx,yy,xx+32,yy+2,searchStatus,c_black,c_red,c_green,0,true,true);
		}
	}
