
function enemyLogic(){
	distanceToPlayer = distance_to_object(obj_player);
	directionToPlayer = point_direction(x,y,obj_player.x,obj_player.y);
	
	if(distanceToPlayer < 300){
		foundplayer = true;
	}else{
		foundPlayer = false ;
	}
	
	if(directionToPlayer > 90){
		image_xscale = - EnemyScaleX
		direction = -1 ;
	}else{
		image_xscale = EnemyScaleX ;
		direction = 1 ;
	}
	
}
function eneyMovement (){
	
}

function EnemySleepStateFunction(){
	sprite_index = spr_spider_walk;
	image_speed = -1;
	
	if(image_index <= animationInterval()){
		image_speed = 0 ;
	}
		