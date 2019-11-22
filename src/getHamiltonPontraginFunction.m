  function [ result ] = getHamiltonPontraginFunction( f0, f )
%GETHAMILTONPONTRAGINFUNCTION Summary of this function goes here
%   Detailed explanation goes here

  global dimension;
  spsi = sym('w', [1 dimension]);
  result = -(sym(f0)) + spsi * f
  
end

