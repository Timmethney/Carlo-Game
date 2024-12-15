//Player inputs
scr_player_inputs()

//Player camera
scr_shorter_camera()
scr_player_camera()

//Player states
switch (state) {
    case PlayerState.free:
		PlayerStateFree()
        break;

    case PlayerState.dash:
		PlayerStateDash()
        break;

    case PlayerState.attack:
		PlayerStateAttack()
        break;
}

if (place_meeting(x,y+1,obj_block)) && (key_jump)
{
	ysp = -20;
} else if(ysp < 18){
	ysp += 1;
}




