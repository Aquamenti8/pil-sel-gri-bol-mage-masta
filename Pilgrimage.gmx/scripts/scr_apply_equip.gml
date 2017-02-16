///scr_apply_equip(name)

switch(argument0){

case("Wood Bow"): obj_player.HP_equip+=2;obj_player.ATQ_equip+=2;break;
case("Pilgrim robe"): obj_player.HP_equip+=100;obj_player.DEF_equip+=2;break;
case("Soft panty"): obj_player.HP_equip+=10;obj_player.DEF_equip+=10;break;
case("Travel boots"): obj_player.HP_equip+=1;break;
case("Travel gloves"): obj_player.HP_equip+=1;break;
default : break;

}
