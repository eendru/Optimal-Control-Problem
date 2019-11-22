function [ output_args ] = createFileForCalculateConjugateSystem( dimension, Hx )
%RECORDCONJUGATESYSTEM Summary of this function goes here
%   Detailed explanation goes here
  %запись в файл сопряженной системы
  fid = fopen('conjugateSystem.m','w');
  fprintf(fid, ' function [ dw ] = conjugateSystem( t, w) \r\n');
  fprintf(fid, ' global dimension;\r\n\r\n');
  fprintf(fid, ' global odeX ;\r\n');
  fprintf(fid, ' dw = zeros(dimension, 1);\r\n');
 
  for i = 1 : 1 : dimension
    for j = 1 : 1 : dimension
      jacob(i) = subs(Hx(i), sprintf('x%d', j), sprintf('gridVectorX(t, %d, odeX)', j));
    end
    fprintf(fid, ' dw(%d) = %s;\r\n', i, char(jacob(i)));
  end
  fprintf(fid, '\r\n end\r\n');
  fclose(fid);
  %
  

end

