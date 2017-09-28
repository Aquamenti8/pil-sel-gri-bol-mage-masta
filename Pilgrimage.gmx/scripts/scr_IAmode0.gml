

//PROBLEM : direction or hsp aren't taken in account ! need tu reverse the direction of the walk, not only of the sprite
if (place_meeting(x, y, obj_LD_limit))
{
    if(mode0_dir=1){mode0_dir=-1}
    else if(mode0_dir=-1){mode0_dir=1}
    if (mirored == true) {mirored = false}// Regarde si le joueur est à gauche ou à droite de l'entité
    else {mirored = true} // Si il est à droite, le sprite de l'entité se retournera et vis versa 
    if (mirored == true) { image_xscale = -1}
    else{ image_xscale = 1}   
  
}
hsp = mode0_dir

