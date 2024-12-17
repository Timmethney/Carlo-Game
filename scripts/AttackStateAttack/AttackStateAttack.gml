function AttackStateAttack(){
	if(turn_timer > 0){
		turn_timer -= 1
	}
	 if (sprite_index != spr_attack1){
	 sprite_index = spr_attack1
	 image_speed = 1
	 }
	 if(turn_timer == 0){
	 if (obj_player.image_xscale ==  2 || obj_player.image_xscale == 1){
	image_xscale = 2} 
	else {
	image_xscale = -2
	}
	 }
	show_debug_message(turn_timer)
	 //Use attack hitbox & check for hits
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
	
	 if(scr_animation_end() && turn_timer == 0){
		 state = ATTACKSTATE.nonattack
		 turn_timer	= 3
	 }
}
