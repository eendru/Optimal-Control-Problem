function [ dataF, dataU ] = refreshDataTable( dimension , U_dimension)
%REFRESHDATATABLE Summary of this function goes here
%   Detailed explanation goes here
  dataF = cell(dimension, 3);
  dataU = cell(U_dimension, 2);
  for i = 1 : 1 : dimension
    tmpstr1 = sprintf('x''%d(t) = ', i);
    dataF(i, 1) = {tmpstr1};
    dataF(i, 2) = {''};
    dataF(i, 3) = {''};  
  end

  for i = 1 : 1 : U_dimension
    tmpstr2 = sprintf('u0_%d(t) = ', i);
    dataU(i, 1) = {tmpstr2};
    dataU(i, 2) = {''};
  end
end

