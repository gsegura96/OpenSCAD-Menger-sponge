order =3;
side=90;

module MengerSponge(side = 90, order =2){
    difference(){
        cube([side,side,side],center=true);
        MengerSponge_aux(side);
    }
    }
    
 module MengerSponge_aux(side = 90, order = 3){
     if (order>0){
         new_side=side/3;
         union(){
         cube([new_side, new_side, side],center=true);
         cube([new_side, side, new_side],center=true);
         cube([side, new_side, new_side],center=true);
    }
    }
    else{
        cylinder(h=100, r=5);
}
    }
 MengerSponge();