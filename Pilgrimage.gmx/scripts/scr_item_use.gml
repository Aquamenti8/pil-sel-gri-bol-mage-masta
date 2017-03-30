///scr_item_use(name)

switch (argument0){
    case "Bread" :{
        with (obj_player){
            heal = 5
            if(actual_hp + heal >= s[0]){ 
                actual_hp = s[0] ;
            }
            else {
                actual_hp += heal ;
            }
        }
        break;
     }
     case "Stamina Potion" :{
        obj_player.actual_stam = obj_player.s[1]
     }
}
