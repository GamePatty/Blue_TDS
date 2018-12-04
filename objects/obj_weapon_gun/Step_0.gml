/// @description Step

//Move with player
depth = obj_player.depth - 1;   //Always above the player sprite
x = obj_player.x;               //With player's position
y = obj_player.y - 20;          //with player's y position
image_index += (keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left));//toggle the gun (testing)
image_xscale = sign(obj_player.image_xscale); //Face the direction same as player is facing
///Weapon change
image_index = clamp(image_index,0,7);
_PlayerWeaponType = image_index;
//Control Ammo Limit
for (i=1; i< 7; i+=1)
{
  if (global.Weapon_AL[i,global.Weapon_Level[i]] < 0) 
      {
      global.Weapon_AL[i,global.Weapon_Level[i]] = 0;
      }
};