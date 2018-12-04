/// @description Init All global Var here

#region Settings
global.Audio_Music = true;
global.Audio_SFX = true;
#endregion
#region Weapon Data
var fast_reload_time = room_speed/4;
var mid_reload_time = room_speed/2;
var slow_reload_time = room_speed;

global.weapon_index = 0;
//Ammo
global.Weapon_A[0,0] = 10; global.Weapon_AR[0,0] = 40; 
global.Weapon_A[1,0] = 30; global.Weapon_AR[1,0] = 120;
global.Weapon_A[2,0] = 4;  global.Weapon_AR[2,0] = 16;
global.Weapon_A[3,0] = 8;  global.Weapon_AR[3,0] = 32;
global.Weapon_A[4,0] = 5;  global.Weapon_AR[4,0] = 20;
global.Weapon_A[5,0] = 5;  global.Weapon_AR[5,0] = 20;
global.Weapon_A[6,0] = 50;  global.Weapon_AR[6,0] = 200;
global.Weapon_A[7,0] = 5;  global.Weapon_AR[7,0] = 10;


//Ammo Limit                    ///Reload Time
global.Weapon_AL[0,0] = 10;     global.Weapon_RT[0,0] =  mid_reload_time;
global.Weapon_AL[1,0] = 30;     global.Weapon_RT[1,0] =  slow_reload_time;
global.Weapon_AL[2,0] = 4;      global.Weapon_RT[2,0] =  mid_reload_time;
global.Weapon_AL[3,0] = 8;      global.Weapon_RT[3,0] =  slow_reload_time;
global.Weapon_AL[4,0] = 5;      global.Weapon_RT[4,0] =  slow_reload_time;
global.Weapon_AL[5,0] = 5;      global.Weapon_RT[5,0] =  slow_reload_time;
global.Weapon_AL[6,0] = 50;      global.Weapon_RT[6,0] =  slow_reload_time;
global.Weapon_AL[7,0] = 5;      global.Weapon_RT[7,0] =  slow_reload_time;

//Upgrade Level - 1
global.Weapon_AL[0,1] = 10;     global.Weapon_RT[0,1] = mid_reload_time;
global.Weapon_AL[1,1] = 30;     global.Weapon_RT[1,1] = slow_reload_time;
global.Weapon_AL[2,1] = 8;      global.Weapon_RT[2,1] =  mid_reload_time;
global.Weapon_AL[3,1] = 4;      global.Weapon_RT[3,1] =  slow_reload_time;
global.Weapon_AL[4,1] = 5;      global.Weapon_RT[4,1] =  slow_reload_time;
global.Weapon_AL[5,1] = 5;      global.Weapon_RT[5,1] =  slow_reload_time;
global.Weapon_AL[6,1] = 5;      global.Weapon_RT[6,1] =  slow_reload_time;
global.Weapon_AL[7,1] = 5;      global.Weapon_RT[7,1] =  slow_reload_time;
//Upgrade Level - 1
global.Weapon_AL[0,2] = 10;     global.Weapon_RT[0,2] = mid_reload_time;
global.Weapon_AL[1,2] = 30;     global.Weapon_RT[1,2] = slow_reload_time;
global.Weapon_AL[2,2] = 8;      global.Weapon_RT[2,2] =  mid_reload_time;
global.Weapon_AL[3,2] = 4;      global.Weapon_RT[3,2] =  slow_reload_time;
global.Weapon_AL[4,2] = 5;      global.Weapon_RT[4,2] =  slow_reload_time;
global.Weapon_AL[5,2] = 5;      global.Weapon_RT[5,2] =  slow_reload_time;
global.Weapon_AL[6,2] = 5;      global.Weapon_RT[6,2] =  slow_reload_time;
global.Weapon_AL[7,2] = 5;      global.Weapon_RT[7,2] =  slow_reload_time;

//Upgrade Var
global.Weapon_Level[0] = 0;
global.Weapon_Level[1] = 0;
global.Weapon_Level[2] = 0;
global.Weapon_Level[3] = 0;
global.Weapon_Level[4] = 0;
global.Weapon_Level[5] = 0;
global.Weapon_Level[6] = 0;


/*/Reload Ammo Can Hold
for (i=0; i< 8; i++)
  {
    for (j=0; j < 3; j++)
        {
           global.Weapon_AR[i,j] = global.Weapon_AL[i,j];
        };
  };

*/

#endregion
#region Inventory
var slot = 10;
for (var i = 0; i < slot ; ++i) {
    global.Inventory_Slot[i] = -1;
}
#endregion
//eveything is set up now
//now goto next room
room_goto_next();//