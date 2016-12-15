order =3;

module MengerSponge(side = 90, order =2){
    difference(){
        cube([side,side,side],center=true);
        MengerSponge_aux(side);
    }
    }
    
 module MengerSponge_aux(side = 90, order = 3, order_count=0){
     if (order>0){
         magic_number=pow(3, order_count);
         new_side= side / (3*magic_number);
         measures_array=[
         [side, new_side, new_side],
         [new_side, side, new_side],
         [new_side, new_side, side]];
         for(measures = measures_array){
             cube(measures, center=true);
             }
             }
    else{
        %cylinder(h=100, r=50);
        }
    }

    
 module holes_generator(side, order){
     magic_number=pow(3, order_count);
     new_side= side / (3*magic_number);
     measures=[side, new_side, new_side];
     for(i=[1:magic_number]){
         translate([(size/magic_number)*i,0,0])
         cube(measures, center=true);
         }
     
     }
   // MengerSponge();
 translate([-(270-30)/2,0,0])
for(i=[0:8]){
translate([30*i,0,0
     ])
cube([10,10,30],center=true);

}