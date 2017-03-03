///scr_item_use(name)

switch (argument0){
    case "Bread" :{ heal = 5
                    if(obj_player.s[0]+heal >= obj_player.HP_max){ 
                        obj_player.s_base[0]=obj_player.HP_base_max;
                        obj_player.s[0]=obj_player.s_base[0]+obj_player.s_eq[0]
                    }
                    else {
                        obj_player.s_base[0]+=5;
                        obj_player.s[0]=obj_player.s_base[0]+obj_player.s_eq[0]
                    }
                    break;}
}
