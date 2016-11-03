function [ M ] = img2median( T )
    R=T(:,:,1);
    G=T(:,:,2);
    B=T(:,:,3);
    R=reshape(R,900,1);
    G=reshape(G,900,1);
    B=reshape(B,900,1);
    IMG=[R,G,B];
    M=im2double(median(IMG));
    M=M.^2.2;

end

