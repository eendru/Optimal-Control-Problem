function [ output_args ] = createFileForCalculateNewUk( Hu, U_dimension, gridSize, alpha_MPG )
%CREATEFILEFORUK Summary of this function goes here
%   Detailed explanation goes here

  
  newFid = fopen('calculateNewUk.m', 'w');
  fprintf(newFid, 'function [res] = calculateNewUk(left, step,  w, x)\n\r');
  fprintf(newFid, 'U_dimension = %d;\r\n\r', U_dimension);
  fprintf(newFid, 'alpha_MPG = %f;\n', alpha_MPG);
  fprintf(newFid, sprintf('tmpGridSize = %d; \n', gridSize));
  
  
  fprintf(newFid, 'res = ones(tmpGridSize, U_dimension);\r\n\r');
  fprintf(newFid, 't = left;\r\n\r');
  
   
  for k = 1 : 1 : gridSize
     fprintf(newFid, sprintf('i = %d;\n\r', k));
    for j = 1 : 1 : U_dimension
       fprintf(newFid, 'res(%d, %d) = %s - alpha_MPG*(%s);\r\n', k, j,  sprintf('functionU(t, %d)', j), char(Hu(j)));
    end
    fprintf(newFid, 't = t + step;\n\r');
   
  end
  
  fprintf(newFid, '\r\n end \r\n');
  fclose(newFid);
  fclose all;

end

