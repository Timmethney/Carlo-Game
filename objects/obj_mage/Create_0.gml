scr_enemyVars()
state = MAGESTATE.free
enemyHealth = 50
xp = irandom_range(150,200)

xsp = 0
ysp = 0
walksp = 5
chaseDist = 600
fallSpeed = true

attackDist = 300
attackTimer = 0
attackDone = false

bullet = new bul_type();
bul_type_set_life(bullet,120)
bul_type_set_sprite(bullet,spr_redfire,1,0)
bul_type_set_radial(bullet,3,15,true)
bulletSpeed = 5