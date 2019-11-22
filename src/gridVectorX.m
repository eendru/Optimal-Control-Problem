function [ result ] = gridVectorX(  t, index, data)
%GRIDVECTORX Summary of this function goes here
%   Detailed explanation goes here
  global left;
  global step;
  global right;
  
  if t == right
    result = data(end, index);
  else
    loct = round((t-left)/step);  %не время, а индекс, так как data уже на сетке
    result =  data(loct+1, index);
  end
end

