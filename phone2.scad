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

phone_length=88;
phone_height=53;

modem_length=61;
modem_height=53;
x_gap=2;
feather_width=25;
feather_height=53;

projection() {
    difference() {
minkowski()
{
  cube([phone_length,phone_height,1]);
  cylinder(r=2,h=1);
}

//modem
cube([modem_length,modem_height,3]);

//micro
translate([modem_length+x_gap,0,0])
cube([feather_width,feather_height,3]);
/*
translate([5,52,0])
cylinder(r=1.5,h=5);

translate([5,2,0])
cylinder(r=1.5,h=5);

translate([63,2,0])
cylinder(r=1.5,h=5);

translate([63,52,0])
cylinder(r=1.5,h=5);
*/
}
}