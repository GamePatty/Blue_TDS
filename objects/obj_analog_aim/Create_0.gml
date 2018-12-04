/// @description Init
var _vx = camera_get_view_width(view_camera[0]);
var _vy = camera_get_view_height(view_camera[0]);
gui_x = (_vx - _vy/5);
gui_y = (_vy - _vy/5);

stick_x = gui_x;
stick_y = gui_y;

st_pressed = -1;
st_radius = _vy/7.5;
vdir = 0;

vdist = 0;
vdir = 0;
sdir = 0;
spd = 0;
b_spd = 4;
h_spd = 0;
v_spd = 0;
b_angle=0;    //Body image angle
h_angle=0;    //Head image angle