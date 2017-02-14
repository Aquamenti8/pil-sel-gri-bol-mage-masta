///scr_itemdrop(name)

with(obj_menu){
    //parcours inv_all a la recherche de l'objet du meme nom
    for(i=0; i<array_height_2d(inv_all) ; i+=1){
        if(inv_all[i,0]=argument0){
        //set le nom sur 0
            inv_all[i,0]=0
        }
    }
}

scr_reload_inv()
