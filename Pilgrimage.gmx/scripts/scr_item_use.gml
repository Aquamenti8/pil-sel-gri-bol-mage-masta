///scr_item_use(name)

switch (argument0){
    case "Bread" :{ obj_player.s_base[0]+=5;
                    if(obj_player.s_base[0]>obj_player.HP_max){ obj_player.s_base[0]=obj_player.HP_max;}
                    break;}
}
