function [U,V] = rgb2uv(R,G,B)

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
        u(i,1)=4*XYZ(i,1)/(XYZ(i,1)+15*XYZ(i,2)+3*XYZ(i,3));
        v(i,1)=9*XYZ(i,2)/(XYZ(i,1)+15*XYZ(i,2)+3*XYZ(i,3));
    end
    UV=[u,v];
    
	if nargout == 1
		U = UV;
	elseif nargout == 3,
		U = UV(:,1);
		V = UV(:,2);
		
    end
    
    