$fn = 200;

//USBside();
connectorside();

module connectorside(){
	difference(){
		plate();
		translate([52, 36, 0]) cube([43, 13, 2]);
		translate([40, 10, 0]) cube([54, 13, 2]);
		translate([41, 24.5, 0]) cube([56, 10, 2]);
		translate([10, 28, 0]) cube([13, 8, 2]);
	}
}

module USBside(){
	difference(){
		plate();
		translate([69, 9, 0,]) cube([13, 11, 2]);
		translate([77, 35, 0,]) cylinder(5, 2.7, 2.7);
		translate([49, 34.5, 0,]) cylinder(2, 1.5, 1.5); 
		
	}
	difference() {
		translate([77, 35, 0,]) cylinder(4, 4, 4);
		translate([77, 35, 0,]) cylinder(5, 2.7, 2.7);
	}
	difference() {
		translate([45, 30.5, 0,]) cube([8, 8, 3]); //for USB side
		translate([46.15, 31.75, 0,]) cube([5.5, 5.5, 5]); 
		
	}
}



module plate(){
	difference(){
		cube([110, 58, 1.5]);
		translate([6.5, 6.5, 0]) holes();
	}
	
	cube([110, 2, 10]);
	cube([2, 58, 10]);
	translate([0, 56, 0]) cube([110, 2, 10]);
	translate([110, 0, 0]) cube([2, 58, 10]);

	module holes(){
		cylinder(.2, 3, 2);
		translate([97, 0, 0]) cylinder(.7, 3, 2);
		translate([97, 45, 0]) cylinder(.7, 3, 2);
		translate([0, 45, 0]) cylinder(.7, 3, 2);
		cylinder(2, 2, 2);
		translate([97, 0, 0]) cylinder(2, 2, 2);
		translate([97, 45, 0]) cylinder(2, 2, 2);
		translate([0, 45, 0]) cylinder(2, 2, 2);
	}
}