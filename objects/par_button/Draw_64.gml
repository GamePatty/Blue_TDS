/// @description Draw button
var xx,yy;
xx = x;
yy = y;
draw_sprite_ext(sprite_index, image_index, xx, yy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
//Draw text in middle of the button
draw_set_font(fSmall);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(xx,yy,text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
/*if key != 0
{
virtual_key_show(key);
}