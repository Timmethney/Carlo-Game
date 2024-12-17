function scr_movement(){

//Movement calculations
var move = key_right - key_left;

canjump -= 1;
if (canjump > 0) && (key_jump)
{
	ysp = -20;
	canjump = 0;
} else if(ysp < 18){
	ysp += 1;
}
xsp = move * walksp;
}