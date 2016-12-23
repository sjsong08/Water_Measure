function [Y, Cb, Cr] = rgb2ycbcr( R,G,B )
    if nargin ==3,
        RGB=[R,G,B];
    elseif nargin==1,
        RGB=R;
    end
    
    [n,~]=size(RGB);
    
    RGB=RGB./255;
    
    for i=1:n
        Y(i,1)  = 16 + (65.481*RGB(i,1) + 128.553*RGB(i,2) + 24.966*RGB(i,3));
        Cb(i,1)=(-37.797*RGB(i,1) - 74.203*RGB(i,2) + 112.0*RGB(i,3)); %128 + (-37.797*RGB(i,1) - 74.203*RGB(i,2) + 112.0*RGB(i,3));
        Cr(i,1) =(112.0*RGB(i,1) - 93.786*RGB(i,2) - 18.214*RGB(i,3)); %128 + (112.0*RGB(i,1) - 93.786*RGB(i,2) - 18.214*RGB(i,3));
    end
    
    
    Y=[Y,Cb,Cr];
    
    
end

