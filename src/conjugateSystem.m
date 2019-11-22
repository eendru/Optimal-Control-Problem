 function [ dw ] = conjugateSystem( t, w) 
 global dimension;

 global odeX ;
 dw = zeros(dimension, 1);
 dw(1) = -1;

 end
