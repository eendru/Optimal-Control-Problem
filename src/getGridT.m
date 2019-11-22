function [ result ] = getGridT( left, step, right, t)
%GETGRIDT Summary of this function goes here
%   Detailed explanation goes here

  result = left + round((t-left)/step) * step;
end

