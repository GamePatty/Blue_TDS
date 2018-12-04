/// @description S
stick_x = gui_x;
stick_y = gui_y;

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
	
	}
    else
	{
    st_pressed = -1;
	h_spd = 0;
	v_spd = 0;
	}
	