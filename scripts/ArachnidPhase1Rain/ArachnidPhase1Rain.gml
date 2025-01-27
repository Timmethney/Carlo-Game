function ArachnidPhase1Rain(){
	var _shootCount = random_range(6,10)
scr_collision()
sprite_index = spr_arachnid_idle
xsp = 0
	if (shootCharge > 0) shootCharge--
	
	if (shootCharge <= 0){
		if (shootTimer <= 0){
			shootTimer = shootCd
			shootCount += 1
		
			if (shootCount < _shootCount){
				for (var i = 0; i < 9; i++){
					instance_create_layer(0 + i * 220 - random_range(50,200),0,"Enemies", obj_web)
					obj_web.state = WEBSTATE.rain
				}
			}
		}	
	}
	if (shootCount >= _shootCount && !instance_exists(obj_web)){
		state1 = PHASE1.walk
		shootCount = 0
		shootCharge = 60
	}
}