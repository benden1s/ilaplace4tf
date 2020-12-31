% Inverse Laplace Transform Calculator for Transfer Function Classes
% Allows taking laplace transform directly by using the transfer function
% Example: sd2td = ilaplace4tf(TF)
% Where TF is a transfer function class and
% sd2td is the time domain equivalent of TF

function sd2td=ilaplace4tf(TF)
syms s;
num= poly2sym(round(cell2mat(TF.num)),s);
den =poly2sym(round(cell2mat(TF.den)),s);
symTF = num/den;
sd2td = ilaplace(symTF)
end
