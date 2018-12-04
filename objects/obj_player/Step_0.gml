/// @description Step
//Depth shorting
depth = -y;
#region Key and Input

//Get the movemtn from the movement analog
hspd = obj_analog_move.h_spd;
vspd = obj_analog_move.v_spd;
//get the facing direction from the Aim analog
if (instance_exists(obj_analog_aim))
	{
	dir = sign(obj_camera.x - x);
	}
	else
	{
		if (hspd != 0)
			{
	        dir = sign(hspd);
			}
	}
image_xscale = dir;
////////////////////////////////////Physics////////////////////////////
// horizontal collision
var yplus = 0;
if (place_meeting(x+hspd , y ,par_solid))
   {
   //slope movement
   yplus = 0;
   
   //Climb Slope is
   while  (place_meeting(x + hspd,y - yplus ,par_solid) && yplus <= abs(2*hspd))    yplus += 1;
   if (place_meeting(x + hspd,y - yplus ,par_solid))
        {
           ///Only for horizaontal movement
        while (!place_meeting(x+sign(hspd) ,y , par_solid))   x += sign(hspd) ;
        hspd = 0 ;
        } 
    else
    {
     y -= yplus;
    }       
  }
// Move orizontally 
 x += hspd ;


// vertical collision
if(place_meeting(x , y+vspd ,par_solid)) {
    while (!place_meeting(x ,y+sign(vspd) , par_solid)) {
        y += sign(vspd) ;
        }
        vspd = 0 ;  
   }     
  
// move vertically
 y += vspd ;    
#endregion
 #region Spirite animation
 
 if (hspd != 0 || vspd != 0){	 
	 image_speed = 2 * max(abs(hspd),abs(vspd))/4;//animate the sprite
	 }	
	 else
	 {
      image_speed = 0;//no animation
	 }
 
 #endregion
 