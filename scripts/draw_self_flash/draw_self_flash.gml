///@arg color
///@arg interval
///@arg alarm
///@arg xscale
///@arg yscale
var _color = argument0;
var _interval = argument1;
var _alarm = argument2;

if (_alarm % _interval) <= _interval/2 and _alarm > 0 {
	gpu_set_fog(true, _color, 0, 1);
	draw_sprite_ext(sprite_index, image_index, x, y, argument3, argument4, 0, c_white, 1);
	gpu_set_fog(false, _color, 0, 1);
}
