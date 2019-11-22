  function [ result ] = projectToSphereUk( Uk)
%PROJECTTOSPHEREUK Summary of this function goes here
%   Detailed explanation goes here
  global radiusSphere;
  global centerSphere;
  
  
  global left; global right; global step; 
  global U_dimension;
  
  gridSize = (right - left)/step + 1 ;
%  centerSphere = cell2mat(centerSphere);
  
 % result = zeros(size(Uk), 1);
  
 
   for i = 1 : 1 : gridSize
     r0 = Uk(i, :) - centerSphere;
     if (norm(r0) < radiusSphere)
       tmpUk = Uk(i, :);  
     else
       tmpUk = centerSphere + r0/norm(r0, 2);  
     end
     
     for j = 1 : 1 : U_dimension
       result(i, j) = tmpUk(1, j);
     end
   end
  
  end
  
  
