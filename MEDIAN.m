% MEDIAN

A=RGB;

for i=1:21
    MRGB(i,:) = median(A((i-1)*10 +1:i*10,:));
end

