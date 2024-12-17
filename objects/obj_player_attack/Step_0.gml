key_attack = keyboard_check(ord("D"))

x = obj_player.x 
y = obj_player.y 


switch(state){
	case ATTACKSTATE.nonattack:
	image_index = 0
	if (key_attack && turn_timer == 3 && obj_player.state == PlayerState.free) state = ATTACKSTATE.attack;
	break;
	case ATTACKSTATE.attack:
    AttackStateAttack()
	break;
}
