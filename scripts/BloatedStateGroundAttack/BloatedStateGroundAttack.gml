function BloatedStateGroundAttack(){
	var _index = floor(image_index)
	if (sprite_index != spr_bloated_ground_attack){
		sprite_index = spr_bloated_ground_attack
		image_index = 0
		Exclamation()
	}

	if (_index == 2) {
	    spikeAttack = true;
	}

	if (spikeAttack) {
	    if (spikeTime <= 0) {
	        instance_create_layer(x + 10 + spikeIndex * 50, y + 120, "Enemies", obj_spike);
	        instance_create_layer(x - 10 + spikeIndex * -50, y + 120, "Enemies", obj_spike);
        
	        spikeIndex += 1; 
	        spikeTime = 3
			
			//stop after X amount spikes
	        if (spikeIndex >= 20) {
	            spikeAttack = false; 
	            spikeIndex = 0; 
	        }
	    }
	}
	
	if (scr_animation_end()){
		recuperateTime = 180
		state = BLOATEDSTATE.recuperate
	}
}