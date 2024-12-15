function scr_movement(){

//Movement calculations
var move = key_right - key_left;

if (place_meeting(x,y+1,obj_block)) && (key_jump)
{
	ysp = -20;
} else if(ysp < 18){
	ysp += 1;
}
xsp = move * walksp;
}