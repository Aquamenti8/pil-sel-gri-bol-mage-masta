///scr_pickitem(numero_ref_item)

with (obj_menu){
    done=false;
    item_name=item_all[argument0,0];
    //parcours inv_all, cherche si un objet comme celui qu'on ajoute existe deja
    for (i=0; i<array_height_2d(inv_all);i+=1){
        if(inv_all[i,0]=item_name){
        // +1 au nombre d'objet (3)
            inv_all[i,3]+=1
            done=true
        }
    }
    
    //parcours inv_all et pose l'objet au premier slot qui [i,0]=0
    for (i=0; i<array_height_2d(inv_all);i+=1){
        if (inv_all[i,0]=0 && !done){
            for(j=0; j<array_length_2d(item_all,i);j+=1){
                inv_all[i,j]=item_all[argument0,j]// copie les info de item_all a inv_all
            }
        done=true
        }
    }
}
scr_reload_inv()

