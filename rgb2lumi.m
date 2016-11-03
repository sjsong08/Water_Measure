function [ L ] = rgb2lumi( RGB )

    [n,~]=size(RGB);
    for i=1:n
        L(i,1)=(RGB(i,1)./255)^(2.2);
        L(i,2)=(RGB(i,2)./255)^(2.2);
        L(i,3)=(RGB(i,3)./255)^(2.2);
    end

end

