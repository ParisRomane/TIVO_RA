function [v, w] = vanishpoints(corners)
p1 = [corners(:,1);1];
p2 = [corners(:,2);1];
p3 = [corners(:,3);1];
p4 = [corners(:,4);1];
v1 = cross(p2,p1);
v2 = cross(p4,p3);
w1 = cross(p3,p2);
w2 = cross(p4,p1);
v = cross(v1,v2);
w = cross(w1,w2);
v = [v(1)/v(3); v(2)/v(3)]
w = [w(1)/w(3); w(2)/w(3)]
line([v(1);corners(1,3)],[v(2);corners(2,3)]);
line([w(1);corners(1,1)],[w(2);corners(2,1)]);
line([v(1);corners(1,1)],[v(2);corners(2,1)]);
line([w(1);corners(1,2)],[w(2);corners(2,2)]);