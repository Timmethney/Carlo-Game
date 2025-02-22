function BloatedStateFree(){

	if (sprite_index != spr_bloated_idle){
		sprite_index = spr_bloated_idle	
	}
	if (scr_animation_end()){
		state = BLOATEDSTATE.spawn
	}
}