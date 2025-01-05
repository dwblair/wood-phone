$fn=50;

projection() {
    difference() {
minkowski()
{
  cube([80,50,1]);
  cylinder(r=2,h=1);
}

translate([2.5,47.5,0])
cylinder(r=2,h=5);

}
}