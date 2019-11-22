function [ result ] = functionU(  t, i)
  global left;
  global step;
  global gridValueU0;
  global right;
  
  if t == right
    result = gridValueU0(end, i);
  else
   grT = round((t-left)/step);
   result = gridValueU0(grT + 1, i);
  end
end

