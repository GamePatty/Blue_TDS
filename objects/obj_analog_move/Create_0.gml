/// @description Init
var _vx = camera_get_view_width(view_camera[0]);
var _vy = camera_get_view_height(view_camera[0]);
gui_x = _vy/5;
gui_y = (_vy - _vy/5);

stick_x = gui_x;
stick_y = gui_y;

st_pressed = -1;
st_radius = _vy/7.5;
vdir = 0;

vdist = 0;
vdir = 0;
spd = 0;
b_spd = obj_player.move_speed;
h_spd = 0;
v_spd = 0;