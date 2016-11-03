for i=1:1620
    YUV(i,:)=YUVdata1((i-1)*1920+1:i*1920);
end

Y=YUV(1:1080,:);
UV=YUV(1081:1620,:);

for i=1:540
    for j=1:960
        U4((i-1)*2+1:i*2,(j-1)*2+1:j*2)=UV(i,2*j);
        V4((i-1)*2+1:i*2,(j-1)*2+1:j*2)=UV(i,2*(j-1)+1);
    end
end


for i=1:1080
    for j=1:1920
        C=Y(i,j)-16;
        D=V4(i,j)-128;
        E=U4(i,j)-128;
        
        R(i,j)=min(round(1.164383*C + 1.596027*E),255);
        G(i,j)=min(round(1.164383*C - (0.391762*D) - (0.812968*E)),255);
        B(i,j)=min(round(1.164383*C + 2.017232*D),255);
        RGB(i,j,1)=R(i,j);
        RGB(i,j,2)=G(i,j);
        RGB(i,j,3)=B(i,j);
    end
end

