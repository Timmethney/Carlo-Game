function PlayerStateAttack(){
scr_movement()
 scr_collision()
 
  //Start of the attack
 if (sprite_index != spr_player_attack1){
	 sprite_index = spr_player_attack1
	 image_speed = 1
		if (obj_player.image_xscale = 1){
		image_xscale = 2} 
		else {
		image_xscale = -2
		}
	 image_yscale = 2
	 image_index = 0
 }
 //Use attack hitbox & check for hits
 mask_index = spr_player_attack1_hb
 var hitByAttackNow = ds_list_create()
 var hits = instance_place_list(x,y,obj_block,hitByAttackNow,false)
 if (hits > 0) {
	 for(var i = 0; i < hits; i++){
		 //If this instance has not yet been hit by this attack
		 var hitID = hitByAttackNow[| i]
		 if (ds_list_find_index(hitByAttack,hitID) == -1){
			 ds_list_add(hitByAttack, hitID)
		//	with (hitID) {EnemyHit(2);}
		 }
	 }
 }
 ds_list_destroy(hitByAttackNow)
 mask_index = spr_player_idle

if(scr_animation_end()){
	sprite_index = spr_player_idle
		if (obj_player.image_xscale = 2){
		image_xscale =1} 
		else {
		image_xscale = -1
		}
	image_yscale = 1
	state = PlayerState.free
}
}


 
