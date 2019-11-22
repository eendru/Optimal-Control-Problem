function [ initT ] = getConjucateInitTerms( przvd_term, x)
%GETCONJUCATEINITTERMS Summary of this function goes here
%   Detailed explanation goes 

  
  if (isequal(przvd_term, 'No'))
    initT = zeros(1, dimension);
  else
    iniT = eval(przvd_term);
  end
  

end

