function Out = rgb2HSV(R,G,B)

	if nargin == 3,
		RGB = [R G B];
	elseif nargin == 1,
		RGB = R;
	else
		error('wrong number of arguments')
    end

    [n,~]=size(RGB);
    
    for i=1:n
        var_R=(RGB(i,1)./255);
        var_G=(RGB(i,2)./255);
        var_B=(RGB(i,3)./255);
        
        var_Min = min([var_R, var_G, var_B]);
        var_Max = max([var_R, var_G, var_B]);
        del_Max = var_Max - var_Min;
        
        V(i,1) = var_Max;
        
        if(del_Max ==0)
            H(i,1) = 0;
            S(i,1) = 0;
        else
            S(i,1) = del_Max / var_Max;
            
            del_R = (((var_Max - var_R) / 6 ) + (del_Max / 2)) / del_Max;
            del_G = (((var_Max - var_G) / 6 ) + (del_Max / 2)) / del_Max;
            del_B = (((var_Max - var_B) / 6 ) + (del_Max / 2)) / del_Max;
            
            if(var_R == var_Max)
                H(i,1) = del_B - del_G;
            elseif(var_G == var_Max)
                H(i,1) = (1/3) + del_R - del_B;
            elseif(var_B == var_Max)
                H(i,1) = (2/3) + del_G - del_R;
            end
            
%             if(H(i,1)<0)
%                 H(i,1) = H(i,1) + 1;
%             elseif(H(i,1)>1)
%                 H(i,1) = H(i,1) - 1;
%             end
        end
    end
    
    Out= [H,S,V];
    
end

    

