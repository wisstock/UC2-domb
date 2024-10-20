//Cube insert template

/* [Hiden] */
a = 49.8;
b = 33.6;
c = 6.28;
d = 53.8;
h = 5; //holder height
IM_offset = 0.2;

module CubeInsert () {
    translate([0, 0, h/2])
    difference(){
        union() {   //basic insert design
            cube([a,b+2*IM_offset,h], center=true);
            cube([b+2*IM_offset,a,h], center=true);
            rotate(a=[0,0,45]){
                cube([c,d+2*IM_offset,h], center=true);
            }
            rotate(a=[0,0,-45]){
                cube([c,d+2*IM_offset,h], center=true);
            }
        }
    }
}

CubeInsert();