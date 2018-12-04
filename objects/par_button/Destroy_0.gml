/// @description Destroy the parent with us
//this will trigger the parent's destroy event which will kill all 
//the childrens of that parent
if  (parent != noone)
	{
	instance_destroy(parent);
	}