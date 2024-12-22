key_attack = keyboard_check_pressed(ord("D"))
key_up = keyboard_check(vk_up)
key_down = keyboard_check(vk_down)

x = obj_player.x 
y = obj_player.y 

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
}

