 //// @description Draw
var _vw = camera_get_view_width(view_camera);
var _vh = camera_get_view_height(view_camera);

//Draw Pannel
draw_set_alpha(0.5);
draw_rectangle_color(16,16,_vw - 16,_vh - 16,false,c_black,c_black,c_black,c_black);//Panel
draw_set_alpha(1);
draw_set_color(c_white);

//Item Exists
if (item != noone)
	{
	//Draw Title
	draw_set_font(fMid);
	draw_set_halign(fa_center);
	draw_text(_vw/2,32,"You Fouund  A");
	draw_sprite_ext(item_image,0,_vw/2,128,4,4,0,c_white,1);
	draw_text(_vw/2,160,item_name);
	draw_set_halign(fa_left);
	}