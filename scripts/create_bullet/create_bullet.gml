// Bullet creation + aim at mouse
var _direction = oPlayer.aim + random_range(-2, 2);   
var _stinger = instance_create_layer(x + lengthdir_x(8, aim), y - 22 + lengthdir_y(8, aim), "Instances", oBullet);
	_stinger.direction = _direction;
	_stinger.image_angle = _direction;
if global.gun = 4 or global.gun = 5 {_stinger.sprite_index = sArrow}

			// Distort player sprite
            if (choose(0, 1)) {
                oPlayer.xscale = 1.3;
                oPlayer.yscale = 0.7;
            } else {
                oPlayer.yscale = 1.3;
                oPlayer.xscale = 0.7;        
            }