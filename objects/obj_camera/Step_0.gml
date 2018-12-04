/// @description Follow player and check the direction
var range = 64;
if (instance_exists(obj_analog_aim))	
	{
		visible = true;
		var cx = obj_player.x + lengthdir_x(range,obj_analog_aim.vdir);
		var cy = obj_player.y + lengthdir_y(range,obj_analog_aim.vdir);	
		x = cx;
		y = cy;
	}
	else
	{
		x += ((obj_player.x - x) + range * obj_player.dir )/20;
		y += (obj_player.y - y)/20; 
		visible = false;
	}