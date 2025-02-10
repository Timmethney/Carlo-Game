function ProcessAttack(){
	 if (sprite_index != argument0){ 
	 sprite_index = argument0
	 image_speed = 1
	 image_index = 0
	 }
	 if (mask_index != argument1){
	 mask_index = argument1	 
	 	 ds_list_clear(hitByAttack)
		     	audio_play_sound(snd_player_swing,1,false,1,0,random_range(0.8,1.2))		
	 }

	 if (obj_player.image_xscale ==  2 || obj_player.image_xscale == 1){
	image_xscale = 2} 
	else {
	image_xscale = -2
	}
	 
	 //Use attack hitbox & check for hits
 var hitByAttackNow = ds_list_create()
 var hits = instance_place_list(x,y,obj_enemyparent,hitByAttackNow,false)
 if (hits > 0) {
	 for(var i = 0; i < hits; i++){
		 //If this instance has not yet been hit by this attack
		 var hitID = hitByAttackNow[| i];
		 if (ds_list_find_index(hitByAttack,hitID) == -1){
			 ds_list_add(hitByAttack, hitID)
			with (hitID) {
				EnemyHit(global.attackDamage);
				if (hitID.lastTime == false){
					audio_play_sound(snd_enemyHit,0,false,1,0,random_range(0.8,1.2))	
				}
				}
				//Bounce
				if (state == ATTACKSTATE.downward && hitID.lastTime == false){
						with (obj_player){
						ysp = -20
						}
					}
				//Knockback
				if ((state == ATTACKSTATE.attack || state == ATTACKSTATE.combo) && hitID.lastTime == false){
					with (obj_player){
					knockback_timer = 5
					}
				}
		 }
	 }
 }
 ds_list_destroy(hitByAttackNow)
}