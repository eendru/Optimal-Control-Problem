function [ outM ] = convertToBracketSystemX( mtr, dimension, index)
%CONVERTTOBRACKETSYSTEM Summary of this function goes here
%   Detailed explanation goes here

  bracket = cell(dimension, 1);
  nobrckt = cell(dimension, 1);
  outM = cell(dimension, 1);
  
  
  
  for i = dimension : -1 : 1
    tmpstr1 = sprintf('x(%d)', i + index);
    bracket(i, 1) = {tmpstr1};
    
    tmpstr2 = sprintf('x%d', i);
    nobrckt(i, 1) = {tmpstr2};
  end
  
  
  for i = 1 : 1 : dimension 
    tmpstr = mtr(i);
    for j = 1 : 1 : dimension 
      tmpstr = strrep(tmpstr, nobrckt(j, 1), bracket(j, 1));
    end
    outM(i, 1) = tmpstr;
  end
 
end

