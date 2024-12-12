function PlayerStateAttack(){
	xsp = 0
	ysp = 0
	
 scr_collision()
 
 //Start of the attack
 if (sprite_index != spr_player_attack1){
	 sprite_index = spr_player_attack1
	 image_index = 0
	 ds_list_clear(hitByAttack)
 }
 //Use attack hitbox & check for hits
 mask_index = spr_player_attack1_hb
 var hitByAttackNow = ds_list_create()
 var hits = instance_place_list(x,y,obj_enemy,hitByAttackNow,false)
 if ( hits > 0) {
	 for(var i = 0; i < hits; i++){
		 //If this instance has not yet been hit by this attack
		 var hitID = hitByAttackNow[| i]
		 if (ds_list_find_index(hitByAttack,hitID) == -1){
			 ds_list_add(hitByAttack, hitID)
			// with (hitID) {
				 //EnemyHit(2);
			// }
		 }
	 }
 }
 ds_list_destroy(hitByAttackNow)
 mask_index = spr_player_idle

if(animation_end()){
	sprite_index = spr_player_idle
	state = PlayerState.free
}
}


 
