/// @description Collide
//If we are not hurt
if (hurt == false){
	//If hp is more than 0
	if (hp > 0){
			hp -= 1;               //Decrease the health
			hurt = true;           //Hurt
			image_index = 1;       //Change Image 
			image_xscale = 1.25;   //Expand on x axis
			image_yscale = 1.25;   //Expand on y axis
			}
			else
			{
			instance_destroy();    //Destroy the instance
			}
	}
instance_destroy(other);	      //Destroy other instance