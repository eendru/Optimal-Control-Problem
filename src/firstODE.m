  function [ dx ] = firstODE( t, x ) 
  global  dimension;
  dx = zeros( dimension , 1);
dx(1) = functionU(t, 1); 
end 
