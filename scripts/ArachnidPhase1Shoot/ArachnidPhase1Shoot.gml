function ArachnidPhase1Shoot(){
	
	xsp = 0
	scr_collision()	
	sprite_index = spr_arachnid_idle	
	if (shootCharge > 0) shootCharge--
	
	if (shootCharge <= 0){
		if (shootTimer <= 0){
			shootTimer = shootCd
			shootCount += 1
			instance_create_layer(x,y,"Enemies",obj_web)
			obj_web.state = WEBSTATE.shoot
		}
		if (shootCount > random_range(4,7)){
			state1 = choose(PHASE1.walk, PHASE1.rain)
			Exclamation()
			shootCount = 0
			shootCharge = 90
		}
	}
}