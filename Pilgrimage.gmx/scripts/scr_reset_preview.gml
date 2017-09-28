///scr_reset_preview()
with (obj_menu){
    for(i=0;i<array_length_1d(obj_player_stat.s_eq);i+=1){
        obj_player_stat.s_eq[i]=0
    }
    //calcule les HP_equip en fonction des objets equipés
    for (i=0; i<array_length_1d(equipment);i+=1){ 
        scr_apply_equip(equipment[i])
    }
}
