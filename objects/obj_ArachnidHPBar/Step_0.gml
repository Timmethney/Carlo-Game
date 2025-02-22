var boss = obj_arachnid

if (!instance_exists(boss)){
	exit	
}

if (healthPoints <= 0) healthPoints = 0
if (healthPointsPrev <= 0) healthPointsPrev = 0

//decrease timer
followUpTimer = clamp(followUpTimer-1,0,followUpTimerMax)

//adjust follow up bar
if (followUpTimer == 0){
	healthPointsPrev = lerp(healthPointsPrev, boss.enemyHealth, 0.2)
}
if (boss.healthLost == true){
	followUpTimer = followUpTimerMax
}

if (boss.enemyHealth <= 0){
	instance_destroy()
}