//Player inputs
scr_player_inputs()

//Fullscreen
if keyboard_check_pressed(vk_f11)
{
    if window_get_fullscreen(){
        window_set_fullscreen(false);
    }
    else{
        window_set_fullscreen(true);
    }
}
//Player camera
if keyboard_check_pressed(ord("F")) {
	with(obj_camera){
		shakeCamera()
	}}
//Movement
scr_movement()

//Climbing variables
var onTheGround = place_meeting(x, y + 1, obj_collisionparent);
var onAWall = place_meeting(x-5,y,obj_climbable) - place_meeting(x+5,y,obj_climbable)

	
//Player states
switch (state) {
    case PlayerState.free:
		PlayerStateFree()
        break;

    case PlayerState.dash:
		PlayerStateDash()
        break;
		
	case PlayerState.climb:
		PlayerStateClimb()
		break;

    case PlayerState.attack:
		PlayerStateAttack()
        break;
		 
	case PlayerState.combo_attack:
		PlayerStateComboAttack()
		break;
		
	case PlayerState.upward_attack:
		PlayerStateUpwardAttack()
		break;
		
	case PlayerState.downward_attack:
		PlayerStateDownwardAttack()
		break;
}
	if (bounce_time > 0){
		bounce_time -= 1
        x += -5 * obj_player.image_xscale
		ysp = -10
		}






