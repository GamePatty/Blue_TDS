/// @description INIT
var _vw = camera_get_view_width(view_camera);
var _vh = camera_get_view_height(view_camera);
display_set_gui_size(_vw, _vh);//400, 225

#region Create the slots
var _vx = camera_get_view_x(view_camera);
var _vy = camera_get_view_y(view_camera);
var slotCapacity = 15;
var slotPerRow = 5;
var slot_gap = 48;
var xx = _vx + 48;
var yy = _vy + 64;
var k = 0;
var item = par_inventory_item;
//Create Slot
for(var i = 0; i <= ceil(slotCapacity/slotPerRow); ++i) {
	
	for (var j = 0; j < slotPerRow; ++j) {
		
		if (k < slotCapacity){
		      //Create Slot
			  instance_create_depth(xx + j * slot_gap ,yy + i * slot_gap,-1,obj_inventory_slot);//Create slot	
			  instance_create_depth(xx + j * slot_gap ,yy + i * slot_gap,-5,item);//Create slot	
			  k++
		      }

		}  
	}
  #endregion
#region Create Button
var a = instance_create_depth(_vx + 330,_vy + 150,-10,obj_button_inv_drop);
    a.text = "USE";
var a =instance_create_depth(_vx + 330,_vy + 174,-10,obj_button_inv_drop);
    a.text = "DROP";
#endregion