function [ output_args ] = createFileToCalculateDiffTerm( functional, dimension,gridSize )
%CREATEFILETOCALCULATEDIFFTERM Summary of this function goes here
%   Detailed explanation goes here


  
  fid12 = fopen('calculatePrzvdTermFunctional.m','w');
  fprintf(fid12, ' function [ res] = calculatePrzvdTermFunctional(x) \r\n');
  fprintf(fid12, ' global dimension;\r\n\r\n');
 
  fprintf(fid12, '    res = zeros(dimension, 1);\r\n');
whos functional
  for i = 1 : 1 : dimension

      fprintf(fid12, '    i = %d;\r\n', i);
      fprintf(fid12, '    res(%d) = (%s);\r\n',  i, functional{i});
  end
fprintf(fid12, '\r\n end\r\n');	
  fclose(fid12);
  

end

