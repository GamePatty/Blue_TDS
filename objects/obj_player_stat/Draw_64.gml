/// @description Draw
var _vw = camera_get_view_width(view_camera);
var _vh = camera_get_view_height(view_camera);

draw_set_alpha(0.5);
draw_rectangle_color(16,16,_vw - 16,_vh - 16,false,c_black,c_black,c_black,c_black);//Panel
draw_rectangle_color(280,16,_vw - 24,_vh - 16,false,c_black,c_black,c_black,c_black);//Button Panel
draw_set_alpha(1);

#region Texts
/*
//draw_set_font(fMenu);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_aqua);
//var otherdps = (oGun.damage*oGun.damage)/60;
draw_text(100, 100, "Level:      "+string(global.level));
draw_text(100, 120, "XP:      "+string(round(global.xp))+"/"+string(global.max_xp));

draw_set_color(c_white);
draw_text(100, 190, "HP:      ");
draw_text(360, 190, string(global.final_hp_max));

draw_text(100, 210, "Armour:      ");
draw_text(360, 210, string(global.armour));

draw_text(100, 230, "Damage Per Second:      ");
draw_text(360, 230, string(otherdps));

draw_text(100, 250, "Day:      ");
draw_text(360, 250, string(oDayNight.day));

draw_text(100, 270, "Hour:      ");
draw_text(360, 270, string(round(oDayNight.hours)));


draw_sprite_ext(global.leg_sprite, 0, 670, 340, 8, 8, 0, c_white, 1);
draw_sprite_ext(global.torso_sprite, 0, 670, 340, 8, 8, 0, c_white, 1);
draw_sprite_ext(global.head_sprite, 0, 670, 340, 8, 8, 0, c_white, 1);

draw_sprite_ext(sAxe, 0, 670, 220, 8, 8, 0, c_white, 1);
draw_sprite_ext(sGunNoArm, global.gun, 600, 370, 6, 6, 0, c_white, 1);
*/
#endregion

//Image
var xx = 330,yy = 280;
draw_sprite_ext(sPlayerRun, image_index, xx, yy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);


var mx = scr_mouse_gui_x(device_mouse_raw_x(0));
var my = scr_mouse_gui_y(device_mouse_raw_y(0));
draw_text(mx,my,string(mx)+","+string(my));