// Joystick stuff
if !instance_exists(oGetOutButton) {instance_create_layer(x, y, "HUD", oGetOutButton)}
direction = oLeftPad.var_direction;
if direction > 45 && direction < 135 {scar = sCar1Up;} else
if direction > 135 && direction < 225 {scar = sCar1Right; facing = -1;} else
if direction > 225 && direction < 315 {scar = sCar1Down;} else
{scar = sCar1Right; facing = 1;}
depth = -y;
    
// Basic player stuff
image_speed = 0.4;
depth = -y;
	var _input_direction = oLeftPad.var_direction;


	if oLeftPad.var_joystick_active = false {
		image_index = 0;
		image_speed = 0;
		apply_friction_to_movement_entity();
	} else {
		image_speed = 0.2;
		add_movement_maxspeed(_input_direction, acceleration_/3, max_speed_*2);
	}

	move_movement_entity(false);

// Adjust scaling after squash + stretch
xscale = ApproachOther(xscale, 1, 0.05);
yscale = ApproachOther(yscale, 1, 0.05);

camera_set_view_pos(view_camera[0], x-200, y-125);
if instance_exists(tarcar)
{
	tarcar.x = x;
	tarcar.y = y;
}