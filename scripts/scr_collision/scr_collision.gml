function scr_collision(){
	
//Horizontal Collision
if (place_meeting(x+xsp,y,obj_collisionparent)){
	while(!place_meeting(x+sign(xsp),y,obj_collisionparent)){
		x = x + sign(xsp);
	}
	xsp = 0;
}
x += xsp;

//Vertical Collision
if (place_meeting(x,y+ysp,obj_collisionparent)){
	while(!place_meeting(x,y+sign(ysp),obj_collisionparent)){
		y = y + sign(ysp);
	}
	ysp = 0;
}
y += ysp;
}
