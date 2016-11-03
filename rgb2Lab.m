function [a,b] = rgb2Lab(R,G,B)

	M = [
		3.40479 -1.537150 -0.498535
		-0.969256 1.875992 0.041556
		0.055648 -0.204043 1.057311];
	ai = inv(M);

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
    
    Xn=95.047;
    Yn=100;
    Zn=108.883;
    t0=(6/29)^3;
    
    [n,~]=size(XYZ);
    for i=1:n
        aa=XYZ(i,1); bb=XYZ(i,2); cc=XYZ(i,3);
        if((bb/Yn)>t0)
            fy = (bb/Yn)^(1/3);
        else
            fy = (7.787 * (bb/Yn))+(16/116);%(1/3)*(29/6)^2*(bb/Yn) + 4/29;
        end
        
        if((aa/Xn)>t0)
            fx = (aa/Xn)^(1/3);
        else
            fx = (7.787 * (aa/Xn))+(16/116); %(1/3)*(29/6)^2*(aa/Xn) + 4/29;
        end
        
        if((cc/Zn)>t0)
            fz = (cc/Zn)^(1/3);
        else
            fz = (7.787 * (cc/Zn))+(16/116);%(1/3)*(29/6)^2*(cc/Zn) + 4/29;
        end
        
        L(i,1)=116 * fy -16;
        A(i,1)=500 *(fx - fy);
        B(i,1)=200 *(fy - fz);
    end
    
    LAB=[A,B];
    
    if nargout == 1
        a = LAB;
    elseif nargout == 2,
        a = LAB(:,2);
        b = LAB(:,3);        	
    end
       
end
