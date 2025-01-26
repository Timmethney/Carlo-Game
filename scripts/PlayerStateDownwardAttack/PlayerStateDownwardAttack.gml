function PlayerStateDownwardAttack(){
 scr_collision()
  	attack_timer = 6
	downward_timer = 12
 
  //Start of the attack
 if (sprite_index != spr_player_attackdown){
	 sprite_index = spr_player_attackdown
	 image_speed = 1
		if (obj_player.image_xscale = 1){
		image_xscale = 1 
		} else {
		image_xscale = -1
		}
	 image_yscale = 1
	 image_index = 0
 }
 


if(scr_animation_end()){
		if (obj_player.image_xscale = 1){
		image_xscale =1} 
		else {
		image_xscale = -1
		}
	image_yscale = 1
	image_index = 0
	state = PlayerState.free
}
}