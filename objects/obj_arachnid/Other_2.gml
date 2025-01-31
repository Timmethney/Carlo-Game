global.otherSpiderDeath = false

enum ARACHNIDSTATE{
	start,
	phase1,
	phase2,
	death
}
enum PHASE1 {
	walk,
	shoot,
	rain
}
enum PHASE2 {
	climb,
	shoot,
	spawn,
	fall
}