if (global.beenHit == false && obj_arachnid.state != ARACHNIDSTATE.death) global.beenHit = true
if (obj_player.invincibility <= 0){
instance_destroy()
}