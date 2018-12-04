/// @description Draw Analog

//Filled Circles
draw_set_alpha(0.75);
draw_circle_color(gui_x, gui_y, st_radius,c_white,c_white,true);
draw_circle_color(stick_x, stick_y, st_radius/2, c_white, c_white, true);
//Outlined circles
draw_set_alpha(0.25);
draw_circle_color(gui_x, gui_y, st_radius, c_white,c_white,false);
draw_circle_color(stick_x, stick_y, st_radius/2, c_white, c_white, false);
draw_set_alpha(1);
