function [x,y] = rgb2xyy2(R,G,B)

	a = [
		3.40479 -1.537150 -0.498535
		-0.969256 1.875992 0.041556
		0.055648 -0.204043 1.057311];
	ai = inv(a);

	if nargin == 3,
		RGB = [R G B];
	elseif nargin == 1,
		RGB = R;
	else
		error('wrong number of arguments')
	end

	XYZ = [];
	for rgb = RGB',
		xyz = ai*rgb;
		XYZ = [XYZ xyz];
	end
	XYZ = XYZ';
    
    
    [n,~]=size(XYZ);
    for i=1:n
        X(i,1)=XYZ(i,1)./sum(XYZ(i,:));
        Y(i,1)=XYZ(i,2)./sum(XYZ(i,:));
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

