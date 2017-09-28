///scr_apply_equip(name)

//HP:0 STAM:1 ATQ:2 DEF:3 ATQ_M:4 DEF_M:5 SPD:6 

switch(argument0){

case("Wood Bow"): obj_player_stat.s_eq[0]+=2;obj_player_stat.s_eq[2]+=2;break;
case("Pilgrim robe"): obj_player_stat.s_eq[0]+=100;obj_player_stat.s_eq[3]+=2;break;
case("Soft panty"): obj_player_stat.s_eq[0]+=10;obj_player_stat.s_eq[3]+=10;break;
case("Travel boots"): obj_player_stat.s_eq[0]+=1;break;
case("Travel gloves"): obj_player_stat.s_eq[0]+=1;break;
default : break;

}
