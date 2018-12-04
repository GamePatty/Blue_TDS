/// @description Step
if st_pressed = -1
{
for (i = 0; i < 5; i++; )
	{
	if device_mouse_check_button(i, mb_left)
		{
		var tx, ty;
		tx = scr_mouse_gui_x(device_mouse_raw_x(i));
		ty = scr_mouse_gui_y(device_mouse_raw_y(i));
		if (point_distance(tx, ty, gui_x, gui_y) < st_radius)
			{
			if st_pressed != i {
				st_pressed = i;
				break;
				} 
			}
		}
	}
}

if device_mouse_check_button(st_pressed, mb_left)
	{
	var spd, vdist, mx, my;
	mx = scr_mouse_gui_x(device_mouse_raw_x(st_pressed));
	my = scr_mouse_gui_y(device_mouse_raw_y(st_pressed));
	vdist = min(st_radius, point_distance(mx, my, gui_x, gui_y));
	vdir = point_direction(gui_x, gui_y, mx, my);
	spd = min(b_spd, vdist / 10);
	h_spd = lengthdir_x(spd, vdir);
	v_spd = lengthdir_y(spd, vdir);
	stick_x = gui_x + lengthdir_x(vdist, vdir);
	stick_y = gui_y + lengthdir_y(vdist, vdir);
    sdir =  point_direction(gui_x, gui_y,stick_x, stick_y);
	//make character point towards mouse
    var dd,ts,vdir_2;
	vdir_2 = point_direction(gui_x, gui_y, mx, my);
    dd = ((((vdir_2 - h_angle) mod 360) + 540) mod 360) - 180; //get the head rotation
    h_angle += min(abs(dd), 10) * sign(dd);  
    dd = ((((h_angle - b_angle) mod 360) + 540) mod 360) - 180; // Get the body rotation
    ts = abs(dd) / 6;
    if abs(dd) < ts b_angle = h_angle else b_angle += sign(dd) * ts;
	
	//At the max position, Shoot bullets
	if (vdist == st_radius)
		{
	       with (obj_weapon_gun)
		   {
            event_user(0);//Shoot Bullet
		   }
		}

	}
    else
	{
    st_pressed = -1;
	h_spd = 0;
	v_spd = 0;
	}
	