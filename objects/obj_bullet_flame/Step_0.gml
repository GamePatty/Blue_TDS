/// @description Step

//If Xscale or Yscale is not 1, than make it 1
if (image_xscale != 1 || image_yscale != 1)
	{
	//Expand
	image_xscale = approach(image_xscale,1,0.0125);
	image_yscale = approach(image_yscale,1,0.0125);
	}
	else
	{
	speed = 0;          //Stop
	instance_destroy(); //Destroy
	}