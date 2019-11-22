function [ output_args ] = createFileForFunctional( functional, dimension,gridSize, U_dimension )
%CREATEFILEFORFUNCTIONAL Summary of this function goes here
%   Detailed explanation goes here

  fid1 = fopen('calculateFunctional.m','w');
  fprintf(fid1, ' function [ res] = calculateFunctional( left, step, x, u) \r\n');
  fprintf(fid1, ' global dimension;\r\n\r\n');
  fprintf(fid1, ' global U_dimension;\r\n\r\n');
  fprintf(fid1, ' global gridSize;\r\n\r\n');
  
  fprintf(fid1, ' global left;\r\n\r\n');
  fprintf(fid1, ' global step;\r\n\r\n');

  fprintf(fid1, '    res = zeros(gridSize, 1);\r\n');
  fprintf(fid1, '    time = left;\r\n');

  for i = 1 : 1 : gridSize
      fprintf(fid1, '    i = %d;\r\n', i);
      fprintf(fid1, '    res(%d) = %s;\r\n', i, functional);
      fprintf(fid1, '    time = time + step;');
  end
fprintf(fid1, '\r\n end\r\n');	
  fclose(fid1);
  

end

