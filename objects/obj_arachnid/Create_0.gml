scr_enemyVars()
state = ARACHNIDSTATE.start
state1 = PHASE1.rain
state2 = PHASE2.climb
enemyHealthMax = 450
enemyHealth = enemyHealthMax
healthLost = false
healthTimer = 0
prevHealth = enemyHealth
destroyNow = false
xp = irandom_range(150,200)

collideCount = 0
collideTimer = 0
shootCharge = 40
shootTimer = 0
shootCount = 0
shootCd = 40

xsp = 10
ysp = 0
walksp = 10