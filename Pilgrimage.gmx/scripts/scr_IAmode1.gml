
if (x - obj_player.x >= 0) {mirored = true} // Check if the player is to the left or right of the entity
else                       {mirored = false} // If he is to the right, entity'sprite will make a 180° turn. Same if to the left

if (mirored == true) {image_xscale = -1}
if (mirored == false) {image_xscale = 1}

scr_pathfinder(obj_player.x , id);

