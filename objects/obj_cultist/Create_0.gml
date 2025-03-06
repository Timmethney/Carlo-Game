phase = PHASE.one
state = PCPHASE1.free

speed = 0
scr_enemyVars()
xp = irandom_range(300,500)

enemyHealthMax = 1000
enemyHealth = enemyHealthMax
movesp = 8
ysp = 0
xsp = 0

healthLost = false
healthTimer = 0
prevHealth = enemyHealth

recuperateTime = 0
attackTime = 0
attackDone = false
shootCount = 0
stunCount = 0
stunTime = 0
stunTimeMax = 120
lastStride = false
strideTimeMax = 300
strideTime = strideTimeMax

bullet1 = new bul_type();
bul_type_set_sprite(bullet1,spr_bluefire,1,0)
bulletSpeed = 5

bullet2 = new bul_type()
bul_type_set_life(bullet2,120)
bul_type_set_sprite(bullet2,spr_bluefire,1,0)

bullet3 = new bul_type()
bul_type_set_sprite(bullet3,spr_purplefire,1,0)

bullet4 = new bul_type()
bul_type_set_life(bullet4,120)
bul_type_set_sprite(bullet4,spr_purplefire,1,0)

bullet5 = new bul_type()
bul_type_set_life(bullet5,90)
bul_type_set_sprite(bullet5,spr_purplefire,1,0)

targetX = undefined
targetY = undefined
moveCenterX = 825 
moveCenterY = 288

moveDownX = 825
moveDownY = 620

moveLeftX = 191
moveLeftY = 223

moveLeftDownX = 191
moveLeftDownY = 620

moveRightX = 1471
moveRightY = 223

moveRightDownX = 1471
moveRightDownY = 620



