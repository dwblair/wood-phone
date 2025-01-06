$fn=50;

/*
projection() {
    difference() {
minkowski()
{
  cube([85,55,1]);
  cylinder(r=2,h=1);
}

translate([5,45,0])
cylinder(r=2,h=5);

}
}
*/

phone_length=86;
phone_height=51;

modem_length=61;
modem_height=52;
x_gap=2;
feather_width=23;
feather_height=51;


projection() {
    difference() {
minkowski()
{
  cube([phone_length,phone_height,1]);
  cylinder(r=2,h=1);
}

translate([0,(phone_height-modem_height)/2,0]) {
//modem
cube([modem_length,modem_height,3]);

//micro
translate([modem_length+x_gap,0,0])
cube([feather_width,feather_height,3]);
}

}
}


translate([0,phone_height*1.2,0]){
projection() {
    difference() {
minkowski()
{
  cube([phone_length,phone_height,1]);
  cylinder(r=2,h=1);
}

}
}
}


translate([0,(phone_height*2)*1.2,0]){
projection() {
    difference() {
minkowski()
{
  cube([phone_length,phone_height,1]);
  cylinder(r=2,h=1);
}

}
}
}