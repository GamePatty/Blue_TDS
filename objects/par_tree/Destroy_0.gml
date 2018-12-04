/// @description Destroy
//Create Logs
for (var i = 0; i < logNo; ++i) {
    // create obj around the our position within the radius of 48-64
	var rad = irandom_range(32,48);
	var xx = x + lengthdir_x(rad,360/no * i);
	var yy = y + lengthdir_y(rad,360/no * i);
	//Create the obj
	instance_create_layer(xx,yy,"Instances_World",obj_wood_log)
}