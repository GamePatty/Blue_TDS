/// @description Draw
var _vx = camera_get_view_x(view_camera[0]);
var _vy = camera_get_view_y(view_camera[0]);
var mx = scr_mouse_gui_x(device_mouse_raw_x(0));
var my = scr_mouse_gui_y(device_mouse_raw_y(0));
#region Player Stat


#endregion
#region Weapon Window

draw_sprite_ext(spr_hud_player_stat,0,_vw - sprite_get_width(spr_hud_player_stat) * 0.65 - 16,0,0.65,0.65,0,c_white,1);//Base
if (instance_exists(obj_weapon_gun)){
	draw_sprite_ext(spr_hud_weapon_image,obj_weapon_gun.image_index,_vw  - 40,20,2,2,0,c_white,1);//Weapon Image
    }
	else
	{
	draw_sprite_ext(spr_hud_weapon_image,0,_vw  - 40,20,2,2,0,c_white,1);//Weapon Image
	}
draw_sprite_ext(spr_hud_hp_icon,0,294,8,0.65,0.65,0,c_white,1);//HP Icon
draw_sprite_ext(spr_hud_armor_icon,0,294,22,0.65,0.65,0,c_white,1);
draw_set_halign(fa_left);
draw_set_font(fSmall);
draw_text(304,8,"100");
draw_text(304,22,"100");
if (instance_exists(obj_weapon_gun))
	{
	var weapon_data;
	weapon_data = string(global.Weapon_A[obj_weapon_gun._PlayerWeaponType,global.Weapon_Level[obj_weapon_gun._PlayerWeaponType]])+"/"+string(global.Weapon_AR[obj_weapon_gun._PlayerWeaponType,global.Weapon_Level[obj_weapon_gun._PlayerWeaponType]])
	if  (obj_weapon_gun.reloading == false)
		{
			draw_text(338,36,weapon_data);
		}
		else
		{
			draw_text(338,36,"Reload");
		}
	}
#endregion
//draw_text(mx,my,string(obj_player.x - mx)+","+string(obj_player.y - my));