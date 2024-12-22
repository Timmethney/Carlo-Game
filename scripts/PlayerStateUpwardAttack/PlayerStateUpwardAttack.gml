function PlayerStateUpwardAttack(){
 scr_collision()
  	attack_timer = 6
 
  //Start of the attack
 if (sprite_index != spr_player_attackup){
	 sprite_index = spr_player_attackup
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
	sprite_index = spr_player_idle
		if (obj_player.image_xscale = 1){
		image_xscale =1} 
		else {
		image_xscale = -1
		}
	image_yscale = 1
	state = PlayerState.free
}
}