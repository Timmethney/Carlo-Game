obj_player.depth = -10;
state = PlayerState.free
facing = FacingDirection.right
xsp = 0;
ysp = 0;
grav = 0.14;
walksp = 8;

can_dash = true
dash_distance = 200
dash_time = 12
dash_cooldown = 60
dash_cooldown_counting = false;

attack_duration = 30;

enum PlayerState{
	free,
	dash,
	attack
}

enum FacingDirection{
	left,
	right
}