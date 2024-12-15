
function PlayerStateFree(){
var move = key_right - key_left;
xsp = move * walksp;
scr_collision()
scr_dash_input()
scr_player_animation()

if (xsp !=0) image_xscale = sign(xsp);

if (key_dash && dash_energy > 50){
	sprite_index = spr_player_dash;
} 
if (key_attack){
	state = PlayerState.attack
}
}