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
}
