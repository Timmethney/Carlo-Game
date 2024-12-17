function PlayerStateAttack(){
 scr_collision()
 
 
  //Start of the attack
 if (sprite_index != spr_player_attack1){
	 sprite_index = spr_player_attack1
	 image_speed = 1
		if (obj_player.image_xscale = 1){
		image_xscale = 2 
		mask_index = -1
		} else {
		image_xscale = -2
		mask_index = -1
		}
	 image_yscale = 2
	 image_index = 0
 }

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


 
