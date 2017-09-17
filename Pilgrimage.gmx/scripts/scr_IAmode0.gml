if touch==false {hsp = 1}
else            {hsp = -1}

//PROBLEM : direction or hsp aren't taken in account ! need tu reverse the direction of the walk, not only of the sprite
if (place_meeting(x, y, obj_LD_limit))
{
    if (touch==false)   {touch=true}
    else                {touch = false}
      

    if (mirored == true) {mirored = false}// Regarde si le joueur est à gauche ou à droite de l'entité
    if (mirored == false){mirored = true} // Si il est à droite, le sprite de l'entité se retournera et vis versa 
    if (mirored == true) { image_xscale = -1}
    if (mirored == false) { image_xscale = 1}   
}


//if touch==true {direction += 5} 
//else {direction -= 5}

