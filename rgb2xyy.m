function [x,y] = rgb2xyy(R,G,B)

    M=[0.49 0.31 0.20 ; 0.17697 0.81240 0.01063;0 0.01 0.99];

    if nargin ==3,
        RGB=[R,G,B];
    elseif nargin==1,
        RGB=R;
    end
    
    [n,~]=size(RGB);
    for i=1:n
        XYZ=(1/0.17697)*M*RGB(i,:)';
        XYZ=XYZ';
        X(i,1)=XYZ(1,1)./sum(XYZ);
        Y(i,1)=XYZ(1,2)./sum(XYZ);
        Z(i,1)=1-X(i,1)-Y(i,1);
    end
    XY=[X,Y];
    if nargout==1,
        x=XY;
    elseif nargout==2,
        x=X(:,1);
        y=Y(:,2);
    end
        
end

