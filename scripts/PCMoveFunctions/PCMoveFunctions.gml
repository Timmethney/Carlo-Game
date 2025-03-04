function moveCenter(){
	move_towards_point(moveCenterX,moveCenterY,movesp)	
	targetX = moveCenterX
	targetY = moveCenterY
}
function moveDown(){
	move_towards_point(moveDownX, moveDownY,movesp)	
	targetX = moveDownX
	targetY = moveDownY
}
function moveLeft(){
	move_towards_point(moveLeftX,moveLeftY,movesp)	
	targetX = moveLeftX
	targetY = moveLeftY
}
function moveRight(){	
	move_towards_point(moveRightX,moveRightY,movesp)
	targetX = moveRightX
	targetY = moveRightY
}
function moveRightDown(){
	move_towards_point(moveRightDownX, moveRightDownY, movesp)
	targetX = moveRightDownX
	targetY = moveRightDownY
}
function moveLeftDown(){
	move_towards_point(moveLeftDownX, moveLeftDownY, movesp)
	targetX = moveLeftDownX
	targetY = moveLeftDownY
}