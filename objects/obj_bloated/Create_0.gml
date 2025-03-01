scr_enemyVars()
state = BLOATEDSTATE.free
enemyHealthMax = 500
enemyHealth = enemyHealthMax
healthLost = false
healthTimer = 0
prevHealth = enemyHealth
xp = irandom_range(300,400)

attackTime = 0
recuperateTime = 0
spikeTime = 0
spikeAttack = false
spikeIndex = 0

bullet1 = new bul_type();
bul_type_set_life(bullet1,180)
bul_type_set_sprite(bullet1,spr_bloated_bolt,1,0)
bul_type_set_radial(bullet1,10,30,true)
bulletSpeedNormal = 10
bulletSpeed = bulletSpeedNormal


bullet2 = new bul_type();
bul_type_set_life(bullet2,180)
bul_type_set_sprite(bullet2,spr_bloated_bolt,1,0)
bul_type_set_radial(bullet2,3,50,true)
