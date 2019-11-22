function [ dimension, U_dimension, dataFX0, dataU0] = getInitTerms()
  
  dimension = 3;
  U_dimension = 3;
  
  
  dataFX0 = cell(dimension, 3);
  dataU0 = cell(U_dimension, 2);
  for i = 1 : 1 : dimension
    tmpstr1 = sprintf('x''%d(t) = ', i);
    dataFX0(i, 1) = {tmpstr1};
  end
  
  
  dataFX0(1, 2) = {'u1'};
  dataFX0(2, 2) = {'u2'};
  dataFX0(3, 2) = {'u3'};
  
  
  dataFX0(1, 3) = {'1'};  
  dataFX0(2, 3) = {'1'};
  dataFX0(3, 3) = {'1'};

  
  
  for i = 1 : 1 : U_dimension
    tmpstr2 = sprintf('u0_%d(t) = ', i);
    dataU0(i, 1) = {tmpstr2};
  end
  
  
  
  dataU0(1, 2) = {'0'};
  dataU0(2, 2) = {'1'};
  dataU0(3, 2) = {'t'};
  
end

