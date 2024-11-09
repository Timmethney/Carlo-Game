function scr_collision(){
	
//Horizontal Collision
if (place_meeting(x+xsp,y,obj_block)){
	while(!place_meeting(x+sign(xsp),y,obj_block)){
		x = x + sign(xsp);
	}
	xsp = 0;
}
x += xsp;

//Vertical Collision
if (place_meeting(x,y+ysp,obj_block)){
	while(!place_meeting(x,y+sign(ysp),obj_block)){
		y = y + sign(ysp);
	}
	ysp = 0;
}
y += ysp;
}
