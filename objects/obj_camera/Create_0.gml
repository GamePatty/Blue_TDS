/// @description Init
/*
///Dectivate all the instance outside the view
var vx = camera_get_view_x(view_camera[0]);        //view x position
var vy = camera_get_view_y(view_camera[0]);       //view y position
var vw = camera_get_view_width(view_camera[0]);   //view camera width
var vh = camera_get_view_height(view_camera[0]);  //view camera height
offset = 64;                                  //Offset region 
 
instance_deactivate_region(vx - offset , vy - offset , vw + offset, vh + offset, false,true); //Activate the instance insde the region of view //Deactivate all the instance (not us)
instance_activate_region(vx - offset , vy - offset , vw + offset, vh + offset, true);         //Activate the instance insde the region of view
instance_activate_layer("Instances_Main");                                                    //Activate the main objects of game
//continue this process every sec (better then calling it every step)
alarm[0] = room_speed;