key_attack = keyboard_check(ord("D"))

x = obj_player.x 
y = obj_player.y 


switch(state){
	case ATTACKSTATE.nonattack:
	image_speed	 = 0
	image_index = 0
	if (key_attack) state = ATTACKSTATE.attack;
	break;
	case ATTACKSTATE.attack:
	 if (sprite_index != spr_attack1){
	 sprite_index = spr_attack1
	 image_speed = 1
	 }
}

show_debug_message(state)