key_attack = keyboard_check_pressed(ord("D"))
key_up = keyboard_check(vk_up)
key_down = keyboard_check(vk_down)

x = obj_player.x 
y = obj_player.y 

if ScreenPause(){exit;}

if (playerDead == true){
	state = ATTACKSTATE.free	
}

	//Dialogue state
	if (instance_exists(obj_text_box)){
		state = ATTACKSTATE.dialogue	
	}

switch(state){
	case ATTACKSTATE.free:
	AttackStateFree()
	break;
	case ATTACKSTATE.attack:
    AttackStateAttack()
	break;
	case ATTACKSTATE.combo:
	AttackStateComboAttack()
	break;
	case ATTACKSTATE.upward:
	AttackStateUpwardAttack()
	break;
	case ATTACKSTATE.downward:
	AttackStateDownwardAttack()
	break;
	case ATTACKSTATE.dialogue:
	sprite_index = noone
	if (!instance_exists(obj_text_box)){
		state = ATTACKSTATE.free
	}	
}
