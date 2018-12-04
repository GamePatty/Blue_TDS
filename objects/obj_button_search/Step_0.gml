/// @description Step
event_inherited();
//check if player is close to any searchable instance
var range = 16;
visible = false; //not visible
for (var i = 0; i < instance_number(par_searchable); i += 1)
    {
     searchable = instance_find(par_searchable, i);
	 if (searchable != noone) 
	 {
	    if (point_distance(obj_player.x, obj_player.y, searchable.x, searchable.y) < range) && (searchable.image_index == 0)
	        {
	        visible = true;
        
	        if (keyboard_check(ord("F")))
	            {
				searchStatus += 1;
				if (searchStatus >= 100)
					{
					searchStatus = 0;           //Search complete 
					//Create loot from the searchable
					with (searchable){
							event_user(0);
							}		          
		            }
				}					
			}
        }
    }