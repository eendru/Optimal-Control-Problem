clc
clear
clear all
warning off

try
  matlabpool close
catch
end

  global all_odeX;
  global all_W;
  global tEND;
  global all_gridValueU0;
  global invT; global alpha_MPG; global absTime; global calcTime;
  global numIter; global znach_function;
  
  global visual_type;
  filename = sprintf('firstODE.m');   
if exist(filename) ~ 0
  delete firstODE.m;
end
if exist('calculateNewUk.m') ~ 0
  delete calculateNewUk.m;
end
  
optimization_problem
