function ProcessAttack(){

	 if (sprite_index != argument0){
	 sprite_index = argument0
	 image_speed = 1
	 image_index = 0
	 }
	 if (mask_index != argument1){
	 mask_index = argument1	 
	 	 ds_list_clear(hitByAttack)
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
				}
				if (state == ATTACKSTATE.downward){
					with (hitID){ 
						if (lastBounce == false){
					with (obj_player){
						ysp = -20
					}
						}
					}
				}
		 }
	 }
 }
 ds_list_destroy(hitByAttackNow)
}