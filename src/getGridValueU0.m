function [ gridValueU0 ] = getGridValueU0( dataU0, gridSize, U_dimension, left, step )


gridValueU0 = zeros(gridSize, U_dimension);

 
 t = left;
 for i = 1 : 1 : gridSize
   for j = 1 : 1 : U_dimension
     gridValueU0(i, j) = eval(functionU0(t, j, dataU0));
   end
   t = t + step;
 end
 

end

