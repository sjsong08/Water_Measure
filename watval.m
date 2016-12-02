function [out] = watval(in)
w1=95.731644;
w2=71.404472;
b=-1.093507;
out = w1*in^2 + w2*in + b;
end