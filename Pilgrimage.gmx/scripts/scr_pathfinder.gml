///scr_pathfinder(x, id)

to_x= argument0
this_id = argument1
//pathfinder bateau qui fait choisir droite ou gauche

if(instance_exists(this_id)){
    dir_to_x = sign(to_x-this_id.x)
    this_id.hsp = dir_to_x*movespeed
    
}

