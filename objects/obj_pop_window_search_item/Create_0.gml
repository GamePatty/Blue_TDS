/// @description Create

item = noone; 
if instance_exists(par_loot_item)
	{
	item = instance_nearest(obj_player.x,obj_player.y,par_loot_item);
	item_image =  item.sprite_index;                                 //Get the image of the item we just picked up
	item_name  =  string_replace(object_get_name(item.object_index),"obj_",""); //string_copy(object_get_name(item.object_index),1,string_length(object_get_name(item.object_index)));            //get the name of the obj depending on the image
	}	
//Get the View's postion to draw/create obj etc relative to that position
_vx = camera_get_view_x(view_camera);
_vy = camera_get_view_y(view_camera);
var _vw = camera_get_view_width(view_camera);
var _vh = camera_get_view_height(view_camera);

//Deactivate all the instances in the room
//instance_deactivate_all(true);

//instance_activate_object(item); // activate our item

//Create the Buttons from the relative position of the view's position
var xx =  320;
var yy =  120;

//create buttons
//Take Button
button_take = instance_create_layer(xx,yy,"Instances_HUD",obj_button_item_take);

	with(button_take){
		depth = depth - 10;
		parent = id;
		}
yy += 32;//gap
//Leave button
button_leave = instance_create_layer(xx,yy,"Instances_HUD",obj_button_item_leave);
with(button_leave){
	depth = depth - 10;
	parent = id;
	}
