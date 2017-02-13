///scr_menu_index_react(menu,index)
menu=argument0
index=argument1

if(menu="tab"){
  switch (index)
    {
        case 0:obj_menu.current_page="Status";break;
        case 1:obj_menu.current_page="Equipment";break;
        case 2:obj_menu.current_page="Inventory";break;
        case 3:obj_menu.current_page="Diary";break;
        case 4:obj_menu.current_page="Map";break;
        case 5:obj_menu.current_page="Option";break;
        default: break; //inventory
    }  
}

if(menu="pause"){
    switch (index)
    {
        case 0: obj_input.pause =false;obj_input.pause_menu_on=false;break;
        case 1:game_end(); break;
        default: break;
    }
}
if(menu="type"){
    obj_menu.inventory_type=index
/*  switch (index)
    {
        case 0:{
        obj_menu.inventory_type=0
        break;
    }
        case 1:obj_menu.inventory_type=0;break;
        case 2:obj_menu.inventory_type=0;break;
        case 3:obj_menu.inventory_type=0;break;
        case 4:obj_menu.inventory_type=0;break;
        default: break; //inventory
    }  */
}

if(menu="item"){
    if (obj_menu.inventory_type=0){
    name = obj_menu.inventory_weapon[index,0] //recupere le nom de l'objet
    }
    if(obj_menu.inventory_type=1){
    name = obj_menu.inventory_armor[index,0]
    }
    //parcours inv_all pour trouver le meme nom
    for (i=0; i<array_height_2d(obj_menu.inv_all); i+=1){
        if (obj_menu.inv_all[i,0]=name){
            if (obj_menu.inv_all[i,5]) obj_menu.inv_all[i,5]=false
            else obj_menu.inv_all[i,5]=true;         // toggle equiped
            scr_reload_inv()
        } 
    }
    if (obj_menu.inventory_type=4) {} //consommer un objet
}

if(menu="equip"){
    name = obj_menu.equipment[index]
    for (i=0; i<array_height_2d(obj_menu.inv_all); i+=1){
        if (obj_menu.inv_all[i,0]=name){
            if (obj_menu.inv_all[i,5]) obj_menu.inv_all[i,5]=false;
            else obj_menu.inv_all[i,5]=true;         // toggle equiped
            scr_reload_inv()
        } 
    }
}
