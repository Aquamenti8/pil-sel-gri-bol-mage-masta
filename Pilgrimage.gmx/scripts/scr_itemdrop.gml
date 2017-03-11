///scr_itemdrop(name)

with(obj_menu){
    //parcours inv_all a la recherche de l'objet du meme nom
    for(i=0; i<array_height_2d(inv_all) ; i+=1){
        if(inv_all[i,0]=argument0){
        //si nombre>1, nombre-1, done
            if(inv_all[i,3]>1){
                inv_all[i,3]-=1
            }
        //else set le nom sur 0
            else {
                inv_all[i,0]=0;
                inv_all[i,5]=false;
            }
        }
    }
}

scr_reload_inv()
