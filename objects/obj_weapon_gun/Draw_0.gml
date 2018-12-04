/// @description Draw
draw_self();
var _x,_y,xx,yy,mod_dif;
_x = x + 14 * sign(obj_camera.x - x);
_y = y - 4;
xx = obj_camera.x;
yy = obj_camera.y;
draw_line(_x,_y,xx,yy);