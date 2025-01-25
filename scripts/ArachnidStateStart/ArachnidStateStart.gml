function ArachnidStateStart(){
	scr_collision()
sprite_index = spr_arachnid_idle

if (scr_animation_end()){
	state = ARACHNIDSTATE.phase1
	state1 = PHASE1.walk
}
}