function[A1,A2,V] = AreaVolume(r,L,B,H)
radius = r;
LengthOfBox = L;
WidthOfBox = B;
HeightOfBox = H;
A1 = pi*radius*radius;
A2 = WidthOfBox*HeightOfBox;
V = LengthOfBox*WidthOfBox*HeightOfBox;
end