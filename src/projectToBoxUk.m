function [ result ] = projectToBoxUk( Uk )
%PROJECTUK Summary of this function goes here
%   Detailed explanation goes here
  global box_alpha; global box_beta;
  global left; global right; global step; 
  global U_dimension;
  
  gridSize = (right - left)/step + 1 ;
  
 
  box_beta_loc  = str2double(box_beta);
  box_alpha_loc = str2double(box_alpha); 
  
  for i = 1 : 1 : gridSize
    for j = 1 : 1 : U_dimension 
      
      if (Uk(i, j) >  box_beta_loc(j))
        result(i, j) =  box_beta_loc(j);
      else
        if (Uk(i, j)  <box_alpha_loc(j))
          result(i, j) = box_alpha_loc(j);
        else
          result(i, j) = Uk(i, j);
        end
      end
    end
  end
  
  
end

