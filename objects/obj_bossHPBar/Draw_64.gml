var spr = spr_bossHPBar;
var boss = obj_arachnid
var spriteWidth = sprite_get_width(spr)
var spriteHeight = sprite_get_height(spr)

var xPosition = (room_width/2 + 480)
var yPosition = (room_height/2 + 700)

var xOffset = (xPosition - round(spriteWidth/2))
var yOffset = (yPosition - round(spriteHeight/2))

draw_sprite_ext(spr,0,xOffset,yOffset,1,1,0,c_white,1)
draw_sprite_ext(spr,1,xOffset,yOffset,healthPointsPrev/boss.enemyHealthMax,1,0,c_white,1)
draw_sprite_ext(spr,2,xOffset,yOffset,boss.enemyHealth/boss.enemyHealthMax,1,0,c_white,1)
draw_sprite_ext(spr,3,xOffset,yOffset,1,1,0,c_white,1)


