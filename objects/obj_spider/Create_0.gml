enum EnemyStates[
	spr_player_attack,
	spr_player_death,
	spr_spider_idle,
	spr_spider_walk
}

EnemyValues ={
	waksSpeed:10
	
}

hspd = 0 ;
vspd = 0 ;
grv = 0.5 ;
EnemyState = EnemyStates.sleep ;
EnemyScaleX = image_xscale ;