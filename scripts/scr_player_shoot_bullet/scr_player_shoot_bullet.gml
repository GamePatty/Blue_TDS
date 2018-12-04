//Check for the shooting variable
if canShoot
    {
    if (global.Weapon_A[_PlayerWeaponType,global.Weapon_Level[_PlayerWeaponType]] != 0 )
        {
        global.Weapon_A[_PlayerWeaponType,global.Weapon_Level[_PlayerWeaponType]] -= 1;          //Decrease the Ammo 
		
	        //Get the tip of the gun	        
			var _x,_y;
				_x = x + 14 * sign(obj_camera.x - x); //x of the gun
				_y = y - 4;                           //y Position of the gun
				
	        canShoot = false;                                                                    //Set shoot var to false
	        var mod_dif = point_direction(_x,_y,obj_camera.x,obj_camera.y) +- random(6);         //Set the random angle for bullet variation
	        instance_create_layer(_x,_y,"Instances_World",obj_flash);                            //Create the muzzle flash
			
	        ///Create Bullets according Weapon type
	         switch (_PlayerWeaponType)
	         {
			 
	             case 0:   ///HandGun       
	                    with (instance_create_layer(_x,_y,"Instances_World",obj_bullet))         //create the bullet
	                        {
						    direction = mod_dif;                                      //Set the bullet directiom
					        speed = 8;                                                //Set the bullet Speed
	                        };
	                        alarm[0] = room_speed/2;                              //Set shoot alarm                       

	                        break;

	             case 1:   ///Machine Gun  
                                 
	                            with (instance_create_layer(_x,_y,"Instances_World",obj_bullet))         //create the bullet
	                                {
	                                direction = mod_dif +- random(6);                          //Set the bullet directiom													   
					                speed = 8;                                                //Set the bullet Speed
	                                }; 
	                        alarm[0] = 2;                              //Set shoot alarm
                                            
	                         break;    
                                                                                                             
	             case 2:   ///ShotGun   
	                         for (i= 1; i < 5; i+=1)
	                         {                                       
	                            with (instance_create_layer(_x,_y,"Instances_World",obj_bullet))   //create the bullet
	                                {
	                                direction = mod_dif +- random(6);                             //Set the bullet directiom
	                                speed = 8;                                                    //Set the bullet Speed
								    }; 
	                         };
	                        alarm[0] = room_speed / 3;                                          //Set shoot alarm
                                            
	                           break;

	              case 3: ///Rocket      
	                    with (instance_create_layer(_x,_y,"Instances_World",obj_bullet))         //create the bullet
	                        {
	                        direction = mod_dif;                                                //Set the bullet directiom
	                        speed = 8;                                                          //Set the bullet Speed						
	                        };
	                        alarm[0] = room_speed / 3;                                           //Set shoot alarm
                           break;
							  
	             case 4:   ///Sniper     
	                    with (instance_create_layer(_x,_y,"Instances_World",obj_bullet))         //create the bullet
	                        {
	                        direction = mod_dif;                                                //Set the bullet directiom
	                        speed = 8;                                                          //Set the bullet Speed
	                        };
	                        alarm[0] = room_speed / 3;                                          //Set shoot alarm
	                        break;
                                              
	             case 5:   ///BOw    
	                    with (instance_create_layer(_x,_y,"Instances_World",obj_bullet))        //Create the bullet
	                        {
	                        direction = mod_dif;                                                //Set the bullet directiom
	                        speed = 8;                                                          //Set the bullet Speed
	                        };
	                        alarm[0] = room_speed / 3;                                          //Set shoot alarm
							break;
                        						
	             case 6:   ///Flame Throw      
	                    with (instance_create_layer(_x,_y,"Instances_World",obj_bullet_flame))  //create the bullet
	                        {
	                        direction = mod_dif;                                               //Set the bullet directiom
	                        speed = 3;                                                         //Set the bullet directiom
							alarm[0] = 30;
	                        };
	                        alarm[0] = 2;                                                      //Set shoot alarm
							break;
                        												
	             default: ///Deafult;
	         }
 
	          audio_play_sound_sfx(_WeaponSound[_PlayerWeaponType],5, false);        //Play shot sound
          
	        /*/Now we will create the bullet casing as a nice special effect
	        with (instance_create(x + lengthdir_x(18, b_angle), y + lengthdir_y(18, b_angle), obj_casing))
	            {
	            image_index = 0;
	            direction = (other.b_angle + 90) - 15 + random(30);
	            image_angle = direction - 90;
	            }
				*/
        }
        else
        {
			///Reload
			reloading = true;                                                                        ///Reloading
            alarm[1] = global.Weapon_RT[_PlayerWeaponType,global.Weapon_Level[_PlayerWeaponType]];   ///Add ammo when this alarm is called
                 
        };
    }			