///scr_reload_inv()
with (obj_menu){
for(i=0; i<array_height_2d(inventory_weapon); i+=1){
    inventory_weapon[i,0]=0 
}
for(i=0; i<array_height_2d(inventory_armor); i+=1){
    inventory_armor[i,0]=0 
}
for(i=0; i<array_height_2d(inventory_keyobj); i+=1){
    inventory_keyobj[i,0]=0
}
for(i=0; i<array_height_2d(inventory_item); i+=1){
    inventory_item[i,0]=0 
}
for(i=0; i<array_length_1d(equipment); i+=1){
    equipment[i]=0 
}
for(i=0; i<array_length_1d(eq_item); i+=1){
    eq_item[i]=0 
}
    n=0
    m=0
    o=0
    p=0
    q=0
for (i=0; i<array_height_2d(inv_all);i+=1){
    if(inv_all[i,1]="WEAPONS"){ //si la class de l'objet est weapons
        for(j=0; j<array_length_2d(inv_all,i);j+=1){ //on parcours l'index de l'objet et on copi tout dans inv_weapon
        inventory_weapon[n,j]= inv_all[i,j]         
        }  
        n+=1    
    }
    if(inv_all[i,1]="ARMORS & CLOTHS"){ //si la class de l'objet est armor
        for(j=0; j<array_length_2d(inv_all,i);j+=1){ //on parcours l'index de l'objet et on copi tout dans inv_weapon
        inventory_armor[m,j]= inv_all[i,j]          
        }
        m+=1
    }
    if(inv_all[i,1]="KEY OBJECTS"){ //si la class de l'objet est weapons
        for(j=0; j<array_length_2d(inv_all,i);j+=1){ //on parcours l'index de l'objet et on copi tout dans inv_weapon
        inventory_keyobj[o,j]= inv_all[i,j]          
        }
        o+=1
    }
    if(inv_all[i,1]="ITEM"){ //si la class de l'objet est weapons
        for(j=0; j<array_length_2d(inv_all,i);j+=1){ //on parcours l'index de l'objet et on copi tout dans inv_weapon
        inventory_item[p,j]= inv_all[i,j]          
        }
        p+=1
    }
    if(inv_all[i,1]="ACCESSORIES"){ //si la class de l'objet est weapons
        for(j=0; j<array_length_2d(inv_all,i);j+=1){ //on parcours l'index de l'objet et on copi tout dans inv_weapon
        inventory_acc[q,j]= inv_all[i,j]          
        }
        q+=1
    }
}


// MET A JOUR LES EQUIPEMENTS
for (i=0; i<array_height_2d(inv_all);i+=1){ 
    if(inv_all[i,5]){
        e=-1
        switch (inv_all[i,2]){
        case "helmet" : e=0;break;
        case "weapon1" :e=1;break;
        case "weapon2" :e=2;break;
        case "top" :e=3;break;
        case "pants":e=4;break;
        case "boots" :e=5;break;
        case "gloves" :e=6;break;
        case "acc" :e=7;break;
        case "food":e=8;break;
        }
        if (e<=7) { //si l'objet equipé n'est pas un item consommable
        equipment[e]=inv_all[i,0]//store le nom de l'objet equipé dans equipment
        } 
        
        else { //si l'objet equipé est un item consommable
                        done=false
            for (j=0; j< array_length_1d(eq_item);j+=1){ // empeche d'equiper plusieurs fois le meme consommable
                if(eq_item[j] = inv_all[i,0]){
                    done=true
                }
            } 
            for (j=0; j< array_length_1d(eq_item);j+=1){        //parcours equip_item et cherche un slot libre
                if (eq_item[j]=0 && done=false) {
                    eq_item[j] = inv_all[i,0]
                    done=true
                }
            }
        }
    }
}

//MET A JOUR LES CARACTERISTIQUES DU PERSO
for (i=0; i<array_length_1d(equipment);i+=1){ 
    scr_apply_equip(equipment[i])
}



with (obj_menu_button)
                {
                instance_destroy();
                }
            create_butt=true
}
