function [ filename ] = recordFirstSystemToFile( data )
%RECORDFIRSTSYSTEMTOFILE Summary of this function goes here
%   Detailed explanation goes here
  global dimension;
 
  filename = sprintf('firstODE.m');
  fID = fopen(filename, 'w');
   
  fprintf(fID, '  function [ dx ] = firstODE( t, x ) \n\r');
  fprintf(fID, '  global  dimension;\n\r');
  fprintf(fID, '  dx = zeros( dimension , 1);\n\r');
  
  for i = 1 : 1 : dimension 
    fprintf(fID,  sprintf('dx(%d) = %s; \n' , i, data{i}));
  end
  
  fprintf(fID, 'end \n\r');
  fclose(fID);  

end

