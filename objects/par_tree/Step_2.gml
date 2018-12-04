/// @description Back to normal
if (image_xscale != 1 || image_yscale != 1){
	// Adjust scaling after squash + stretch
	image_xscale = ApproachOther(image_xscale, 1, 0.05);
	image_yscale = ApproachOther(image_yscale, 1, 0.05);
	}
	else
	{
	hurt = false;
	image_index = 0;
	}