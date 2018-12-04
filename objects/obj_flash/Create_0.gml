/// @description Muzzle Flash
image_xscale = 0.5;                                 //Xscale
image_yscale = 0.5;                                 //Yscale
alarm[0]=3;                                         //Destroy alarm
image_blend=merge_color(c_yellow,c_white,0.25);     //Flash colour
audio_play_sound_sfx(aBulletFlesh,5,false);         //Play SFX