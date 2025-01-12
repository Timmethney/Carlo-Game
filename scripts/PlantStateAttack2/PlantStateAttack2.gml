function PlantStateAttack2(){
var playerDist = point_distance(obj_player.x, obj_player.y, obj_plant.x,obj_plant.y)
var playerDirection = sign(obj_player.x - x)
scr_collision()

	if (playerDist > attackDist){
	state = PLANTSTATE.free
	turn_time = 0
	} else {
		if (sprite_index != spr_plant_biteL){
			sprite_index = spr_plant_biteL
			image_index = 0
		}
			if (scr_animation_end() && sprite_index != spr_plant_biteR){
				sprite_index = spr_plant_biteR
				image_index = 0
				if (scr_animation_end()){
					canCombo = true
					}
					if (playerDist < attackDist && canCombo = true){
					state = PLANTSTATE.attack1
					canCombo = false
					} else {
					state = PLANTSTATE.free
					canCombo = false
					turn_time = 0
				}
			}
		}
	}