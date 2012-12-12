outer = 20;
inner=10;
s=1.2*outer/2;
lip = 0.8*outer;

difference() {
	union() {
		translate(v = [0, 0, outer/2]) {
			union() {
				cube(size = outer, center = true);
				polyhedron(
					points=[ [s,0,0],[0,-s,0],[-s,0,0],[0,s,0], 
								[0,0,0.8*s]  ],                                 
					triangles=[ [0,1,4],[1,2,4],[2,3,4],[3,0,4],          
									[1,0,3],[2,1,3] ]                         
				);
			}
		}
		cylinder(h = .04*outer, r1 = lip, r2 = lip, center = true);
	}
	cube(size = inner, center = true);
}
