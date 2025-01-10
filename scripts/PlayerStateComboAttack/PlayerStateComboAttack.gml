function PlayerStateComboAttack(){
scr_collision()
attack_timer = 6
doneAttack = false

  //Start of the attack
 if (sprite_index != spr_player_attack2){
	 sprite_index = spr_player_attack2
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

