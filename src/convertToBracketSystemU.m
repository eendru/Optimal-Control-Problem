function [ outM ] = convertToBracketSystemU( mtr, dimension)
%CONVERTTOBRACKETSYSTEM Summary of this function goes here
%   Detailed explanation goes here

  outM = cell(dimension, 1);
  
  
  for i = 1 : 1 : dimension 
    for j = 1 : 1 : dimension 
      tmpstr = strrep( mtr(i),  sprintf('u%d', i),  sprintf('u(%d)', i););
    end
    outM(i, 1) = tmpstr;
  end
 
end

