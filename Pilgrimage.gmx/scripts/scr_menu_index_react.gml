///scr_menu_index_react(menu,index)
menu=argument0
index=argument1

if(menu="tab"){
    scr_reset_preview()
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
    scr_reset_preview()
    obj_menu.inventory_type=index
}

if(menu="item"){
    if (obj_menu.inventory_type=0){
    name = obj_menu.inventory_weapon[index,0] //recupere le nom de l'objet
    }
    if(obj_menu.inventory_type=1){
    name = obj_menu.inventory_armor[index,0]
    }
    if(obj_menu.inventory_type = 4){
    name = obj_menu.inventory_item[index,0]
    }
    //parcours inv_all pour trouver le meme nom
    index_toggled=-1
    
    for (i=0; i<array_height_2d(obj_menu.inv_all); i+=1){
    //parcours inv_all a la recherche d'un objet du meme nom que celui clické
    
        if (obj_menu.inv_all[i,0]=name){
            if (obj_menu.inv_all[i,5]) obj_menu.inv_all[i,5]=false
            else obj_menu.inv_all[i,5]=true;         // toggle equiped
            index_toggled=i
            for (j=0; j<array_height_2d(obj_menu.inv_all); j+=1){
            //parcours inv_all de nouveau, cherche des objet equippés et du meme type que index_toggled ([ i,2] )
                toggled_type= obj_menu.inv_all[index_toggled,2]
                if ((obj_menu.inv_all[j,2]=toggled_type) && (j!=index_toggled) && (obj_menu.inv_all[j,5]=true)){ //si l'objet i est de meme type que indextoggeled, si il est equipé et si ce n'est pas indextoggled
                    obj_menu.inv_all[j,5]=false; // toggle equiped 
                }
            }
            scr_reload_inv()
        }     
    }
    if (obj_menu.inventory_type=4) {} //consommer un objet
}

if(menu="equip"){       //Passe de equipé a non equipé
    scr_reset_preview()
    name = obj_menu.equipment[index]
    if name!=0{
    for (i=0; i<array_height_2d(obj_menu.inv_all); i+=1){ //parcours inv_all a la recherche d'un objet du meme nom que celui clické
    
        if (obj_menu.inv_all[i,0]=name){    //lorsqu'il le trouve
        
            if (obj_menu.inv_all[i,5]) obj_menu.inv_all[i,5]=false; // toggle equiped
            else obj_menu.inv_all[i,5]=true;  
            scr_reload_inv()       
         }        
    }
    }
}

if (menu="equip_item"){
    name = obj_menu.eq_item[index]
    if name!=0{
    for (i=0; i<array_height_2d(obj_menu.inv_all); i+=1){ //parcours inv_all a la recherche d'un objet du meme nom que celui clické
    
        if (obj_menu.inv_all[i,0]=name){    //lorsqu'il le trouve
        
            if (obj_menu.inv_all[i,5]) obj_menu.inv_all[i,5]=false; // toggle equiped
            else obj_menu.inv_all[i,5]=true; 
            scr_reload_inv()       
         }        
    }
    }
}
