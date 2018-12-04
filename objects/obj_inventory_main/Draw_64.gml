/// @description Draw
var _vw = camera_get_view_width(view_camera[0]);
var _vh = camera_get_view_height(view_camera[0]);

draw_set_alpha(0.5);
draw_rectangle_color(16,16,_vw - 16,_vh - 16,false,c_black,c_black,c_black,c_black);//Panel
draw_rectangle_color(280,16,_vw - 24,_vh - 16,false,c_black,c_black,c_black,c_black);//Button Panel
draw_set_alpha(1);
//Image
var mx = scr_mouse_gui_x(device_mouse_raw_x(0));
var my = scr_mouse_gui_y(device_mouse_raw_y(0));
draw_text(mx,my,string(mx)+","+string(my));