/// @description Init
event_inherited();             //Copy parent's create event
image_speed = 0;               //No animation
image_index = 0;               //Image depending on the condition
loot_avil = choose(1,1);       //Chances of loot to be avilable
loot_item = choose(obj_food_can,obj_scrap,obj_shell,obj_raw_meat,obj_med_kit,obj_cooked_meat,obj_fuel,obj_arrows);      //Loot item 