function varargout = optimization_problem(varargin)
%OPTIMIZATION_PROBLEM M-file for optimization_problem.fig
%      OPTIMIZATION_PROBLEM, by itself, creates a new OPTIMIZATION_PROBLEM or raises the existing
%      singleton*.
%
%      H = OPTIMIZATION_PROBLEM returns the handle to a new OPTIMIZATION_PROBLEM or the handle to
%      the existing singleton*.
%
%      OPTIMIZATION_PROBLEM('Property','Value',...) creates a new OPTIMIZATION_PROBLEM using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to optimization_problem_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      OPTIMIZATION_PROBLEM('CALLBACK') and OPTIMIZATION_PROBLEM('CALLBACK',hObject,...) call the
%      local function named CALLBACK in OPTIMIZATION_PROBLEM.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help optimization_problem

% Last Modified by GUIDE v2.5 26-Dec-2013 12:00:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @optimization_problem_OpeningFcn, ...
                   'gui_OutputFcn',  @optimization_problem_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
   gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before optimization_problem is made visible.
function optimization_problem_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for optimization_problem
  handles.output = hObject;
  guidata(hObject, handles);

  global dimension; global functional;
  global left; global right; global step; 
      global U_dimension; global dataU0;  global gridValueU0;
      global odeX; global tEND;

  global HoldRightEnd;
  global boolHRE;


global stopJ;
global stopU;

boolHRE = false;

stopJ = false;
stopU = false;
  
  %[dimension, U_dimension, dataFX, dataU0] = getInitTerms();
  
  
  
 % set(handles.ut_FunctionAndT, 'Data', dataFX);
 % set(handles.ut_functionU0,   'Data', dataU0);
 % set(handles.edit_Dimension, 'String', num2str(dimension));
 % set(handles.ed_U_dimension, 'String', num2str(U_dimension));
  
  

% UIWAIT makes optimization_problem wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = optimization_problem_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% eventdata  reserved - to be defined in a future version of MATLAB
% hObject    handle to figure
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pb_START.
function pb_START_Callback(hObject, eventdata, handles)
% hObject    handle to pb_START (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
  

global all_odeX;
  global all_W;
  global all_gridValueU0;
 
%размерность левый конец, правый конец, шаг, ГЛОБАЛЬНОЕ значение текущего U
  global dimension; global left; global right; global step; global gridValueU0;
% функционал - интегральный + количество итераций 
  global numIter;
  %размерность управления 
  global U_dimension; global odeX; global tEND; global W;
% начальные значения
  global invT;

%%%%
  global stopJ;
global stopU;
%%%%
%интегральный + функциональный
  global znach_function;
  global term_functional;

  global functional; 
  

  global centerSphere;
  
%%  
  global multiplicity;
  global method;
  
  global calcTime;
%%
  
  %%%%% 
  %----MPG-param
    global alpha_MPG;
    global M_MPP; global E_MPP;
  %----MPG-param

%%%%%%%%%%%%
  global HoldRightEnd; global betaHRE;
  global boolHRE; 
  
  global eps_stopU;

%%%%%%%%%%%%
  
   symbolicX = sym('x', [1 dimension]);
if exist('firstODE.m' ) ~ 0
  delete firstODE.m;
end

if exist('calculateNewUk.m')
  delete calculateNewUk.m;
end
  %%%%%%%%%%%
    step = str2double(get(handles.ed_TimeStep,    'String'));
    left = str2double(get(handles.ed_LeftEnd,     'String'));
    right = str2double(get(handles.ed_rightEnd,     'String'));
  gridSize = (right - left)/step + 1 ;
  %%%%%%%%%%%
  
  dataFX = get(handles.ut_FunctionAndT, 'Data');
  vIC    = str2double(dataFX(:, 3));   vIC = vIC.';  
  dataFX = dataFX(:, 2);
  
  %%%%
    dataFXdup = dataFX; %сохранение для след
  %%%%
  dataU0 = get(handles.ut_functionU0, 'Data');
  dataU0 = dataU0(:, 2);
   
  h = waitbar(0, 'Please wait...');
 


%замена на скобки в интегральном функционале



boolHRE
   new_functional = sprintf('%s', functional)
   integr_funct = new_functional
  
  for j = 1 : dimension                                            
     integr_funct = strrep(integr_funct, sprintf('x%d', j), sprintf('x(i, %d)', j));
  end
 
  for j = 1 : U_dimension
      integr_funct = strrep(integr_funct, sprintf('u%d', j), sprintf('u(i, %d)', j));
  end    
%для начальных условий сопряженной системы

if (boolHRE == true)
  tmpe = sym('0');
  for i = 1 : 1 : dimension
    tmpe = tmpe + sym(sprintf('(x%d - %d)^2', i, HoldRightEnd(i)));
  end
  term_functional = betaHRE * tmpe
end

    proizvd_term = -jacobian(term_functional, symbolicX)
%замена на скобки в терминальном функционале
  for i = 1 : 1 : dimension
    term_functional = subs((term_functional), sprintf('x%d', i), sprintf('x(%d)', i));
  end	
%замена на скобки в производной sтерминального функционала

for i = 1 : 1 : dimension
    proizvd_term = subs((proizvd_term), sprintf('x%d', i), sprintf('x(%d)', i));	
  end	
	

  tmpZet = zeros(1, dimension);
  if isequal(tmpZet, proizvd_term)
    tmp = 'zero'
    proizvd_term = sym(tmpZet)
  end
 

whos proizvd_term	
tmp_size_tmp = (size(proizvd_term));
tmp_size_tmp = tmp_size_tmp(2)


tmp_func_prx = cell(tmp_size_tmp, 1);
  for i = 1 : 1 : tmp_size_tmp
   tmp_func_prx{i} = char(proizvd_term(1, i));
  end	

%char(proizvd_term)
  createFileForFunctional(integr_funct, dimension,gridSize, U_dimension);
  createFileToCalculateDiffTerm(tmp_func_prx, dimension, gridSize);
  
  %functionU0 - для значения начального U0
  %functionU - для значений U потом
  %gridValueU0 - получить массив значений U0 на сетке
  %----------------------------

  %получить значения начального U - U0 - на сетке
  gridValueU0 = getGridValueU0(dataU0, gridSize, U_dimension, left, step);
  % заменить в системе u0 на реальные значения
  
 
  for i = 1 : 1 : dimension
    for j = 1 : 1 : U_dimension
      dataFX{i} = strrep(dataFX{i}, sprintf('u%d', j), sprintf('functionU(t, %d)', j));
    end
  end
   
 
  
%скобки + запись в файл
  dataFX_brc = convertToBracketSystemX(dataFX, dimension, 0);
  recordFirstSystemToFile(dataFX_brc);
%скобки для U0

  tr = 'please wait';
  while exist('firstODE.m') == 0
    tr
  end
 
  
%получаем функция ГП 
  
  functH = getHamiltonPontraginFunction(new_functional, dataFX)
  
  
%Производная по х функции ГП

  Hx = -jacobian(functH, symbolicX)
  whos Hx
  
  tmpdim = dimension;
  tmpUdim = U_dimension;
 %надо заменить на скобки
  for i = 1 : 1 : tmpUdim
    for j = 1 : 1 : tmpdim
      Hx(i) = subs(Hx(i), sprintf('w%d', j), sprintf('w(%d)', j));
      Hx(i) = subs (Hx(i), sprintf('x%d', j), sprintf('gridVectorX(t, %d, odeX)', j));
    end  
  end
 
  
  %функция ГП + производная по u
  functHnotU = getHamiltonPontraginFunction(new_functional, dataFXdup) ;
  symbolicU = sym('u', [1 dimension]);
  Hu = -jacobian( functHnotU, symbolicU)  ;
   

  % Замена на скобки Hu
  
  for i = tmpUdim : -1 : 1
    for j = tmpdim : -1 : 1
      Hu(i) = subs (Hu(i), sprintf('x%d', j), sprintf('x(i, %d)', j));
      Hu(i) = subs (Hu(i), sprintf('w%d', j), sprintf('w(i, %d)', j));
    end
     for j = tmpdim : -1 : 1
      Hu(i) = subs (Hu(i), sprintf('u%d', j), sprintf('functionU(t, %d)', j));
    end
    
  end
  
   
  %запись в файл сопряженной системы
  createFileForCalculateConjugateSystem(dimension, Hx);
  
  %запись в файл Uk
  if isequal(method, 'MPP')
    alpha_MPG = 0.01;
  end
  createFileForCalculateNewUk(Hu, U_dimension, gridSize, alpha_MPG);
  tr = 'please wait';
  while exist('calculateNewUk.m') == 0
    tr
  end


  initT = zeros(1, dimension);
 
%%%%%%%%%%%%%%%%%%%%%%%
%  W это сопряженная переменная для системы, не PSI
%%%%%%%%%%%%%%%%%%%%%%%
  %
  prcODE = odeset('AbsTol', 0.001, 'RelTol', 0.001);      
   
tic
multiplicity
method
stopU
betaHRE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


previous_funct = 100000000;
previous_U0    = getGridValueU0(dataU0, gridSize, U_dimension, left, step);

TT = [left : step : right];

if(isequal(method, 'MPG'))
    if isequal(multiplicity, 'spher')
      for i = 1 : 1 : numIter
        [tEND, odeX] = ode23(@firstODE, left:step:right, vIC, prcODE);
        all_odeX{i} = {odeX};
         initT = calculatePrzvdTermFunctional(odeX(gridSize, :));
        [invT, W] = ode23(@conjugateSystem, right:-step:left, initT, prcODE);
        
        W = W(end: -1: 1, : ); 
        all_W{i} = {W};
        gridValueU0 = calculateNewUk(left, step, W, odeX);  
        gridValueU0 = projectToSphereUk(gridValueU0);
        all_gridValueU0{i} = {gridValueU0};
        waitbar(i/numIter,h)	
        if boolHRE == true
          znach_function = trapz(TT, calculateFunctional(left, step, odeX, gridValueU0)) + betaHRE * norm(odeX(gridSize, :) - HoldRightEnd)^2	        
        else
          znach_function = trapz(TT, calculateFunctional(left, step, odeX, gridValueU0)) + calculateTerminalFunctional(term_functional,odeX(gridSize, :)); 
        end
        
       
      	if stopJ == true
          if previous_funct < znach_function   
            break;	
          end
        end
        
        if stopU == true
            tmp =gridValueU0 - previous_U0; 
            
	      if (norm(tmp) < eps_stopU)
                break;
             end
        end

        previous_funct = znach_function;
        previous_U0 = gridValueU0;

      end 
    end
  %%%%тут функционал..
    if isequal(multiplicity, 'paral')
        for i = 1 : 1 : numIter
        [tEND, odeX] = ode23(@firstODE, left:step:right, vIC, prcODE);
        all_odeX{i} = {odeX};
        initT = calculatePrzvdTermFunctional(odeX(gridSize, :));
       [invT, W] = ode23(@conjugateSystem, right:-step:left, initT, prcODE);
    
       
        W = W(end: -1: 1, : );
        all_W{i} = {W};
        gridValueU0 = calculateNewUk(left, step, W, odeX);

        gridValueU0 = projectToBoxUk(gridValueU0);
        all_gridValueU0{i} = {gridValueU0};
        waitbar(i/numIter,h)
        if boolHRE == true
          znach_function  = trapz(TT, calculateFunctional(left, step, odeX, gridValueU0)) + betaHRE * norm(odeX(gridSize, :) - HoldRightEnd)^2;	        
        else
          znach_function = trapz(TT, calculateFunctional(left, step, odeX, gridValueU0)) + calculateTerminalFunctional(term_functional,odeX(gridSize, :)); 
        end

       
      	if stopJ == true
          if previous_funct < znach_function   
            break;	
          end
        end
        
        if stopU == true
            tmp =gridValueU0 - previous_U0; 
            
	      if (norm(tmp) < eps_stopU)
            break;
          end
        end
        
        previous_funct = znach_function;
        previous_U0 = gridValueU0;
      end
    end
  end

  
  if(isequal(method, 'MPP'))
    
    if isequal(multiplicity, 'spher')
     for i = 1 : 1 : numIter
        for j = 1 : 1 : M_MPP
          [tEND, odeX] = ode23(@firstODE, left:step:right, vIC, prcODE);
          all_odeX{i} = {odeX};
 initT = calculatePrzvdTermFunctional(odeX(gridSize, :));
          [invT, W] = ode23(@conjugateSystem, right:-step:left, initT, prcODE);
          
          W = W(end: -1: 1, : ); 
          all_W{i} = {W};
          gridValueU0 = calculateNewUk(left, step,  W, odeX);  
          gridValueU0 = projectToSphereUk(gridValueU0);
          
          all_gridValueU0{i} = {gridValueU0};      
           if boolHRE == true
          znach_function = trapz(TT, calculateFunctional(left, step, odeX, gridValueU0)) + betaHRE * norm(odeX(gridSize, :) - HoldRightEnd)^2	        
        else
          znach_function = trapz(TT, calculateFunctional(left, step, odeX, gridValueU0)) + calculateTerminalFunctional(term_functional,odeX(gridSize, :)); 
        end

        end
        gridValueU0 = E_MPP(i) * gridValueU0;
        waitbar(i/numIter,h)
      end 
      
      
    end
  
    if isequal(multiplicity, 'paral')
      k = 1;
      for i = 1 : 1 : numIter
        for j = 1 : 1 : M_MPP
          [tEND, odeX] = ode23(@firstODE, left:step:right, vIC, prcODE);
          all_odeX{i} = {odeX};
 initT = calculatePrzvdTermFunctional(odeX(gridSize, :));
          [invT, W] = ode23(@conjugateSystem, right:-step:left, initT, prcODE);
          W = W(end: -1: 1, : ); 
          all_W{i} = {W};
          gridValueU0 = calculateNewUk(left, step,  W, odeX);  
          gridValueU0 = projectToBoxUk(gridValueU0);
          all_gridValueU0{i} = {gridValueU0};      
           if boolHRE == true
          znach_function = trapz(TT, calculateFunctional(left, step, odeX, gridValueU0)) + betaHRE * norm(odeX(gridSize, :) - HoldRightEnd)^2	        
        else
          znach_function = trapz(TT, calculateFunctional(left, step, odeX, gridValueU0)) + calculateTerminalFunctional(term_functional,odeX(gridSize, :)); 
        end
   
        end
        gridValueU0 = E_MPP(k) * gridValueU0;
        k = k + 1;
        waitbar(i/numIter,h)
      end 
      
   end
  end
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
  whos all_odeX;
  whos all_W;
  
  
  calcTime = toc;    
  close(h);
  
  
  drawPlot  
  
% --- Executes on btton press in cb_stopCond_Module.
function cb_stopCond_Module_Callback(hObject, eventdata, handles)
% hObject    handle to cb_stopCond_Module (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA 0.4995

% Hint: get(hObject,'Value') returns toggle state of cb_stopCond_Module


% --- Executes on button press in cb_stopCond_NormFunctional.
function cb_stopCond_NormFunctional_Callback(hObject, eventdata, handles)
% hObject    handle to cb_stopCond_NormFunctional (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb_stopCond_NormFunctional


global stopJ;
stopJ = get(hObject,'Value') 


% --- Executes on button press in cb_stopCond_NormOfDifference.
function cb_stopCond_NormOfDifference_Callback(hObject, eventdata, handles)
% hObject    handle to cb_stopCond_NormOfDifference (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb_stopCond_NormOfDifference



function edit_stopCond_NumIter_Callback(hObject, eventdata, handles)
% hObject    handle to edit_stopCond_NumIter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_stopCond_NumIter as text
%        str2double(get(hObject,'String')) returns contents of edit_stopCond_NumIter as a double
  global numIter;
  numIter = str2double(get(hObject,'String'))
  if (isnan(numIter))
    numIter = 10;
  end
  
  set(hObject,'String', num2str(numIter));

% --- Executes during object creation, after setting all properties.
function edit_stopCond_NumIter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_stopCond_NumIter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_Dimension_Callback(hObject, eventdata, handles)
% hObject    handle to edit_Dimension (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_Dimension as text
%        str2double(get(hObject,'String')) returns contents of edit_Dimension as a double
  global dimension; global U_dimension;
  dimension = str2double(get(hObject,'String'));
  
  if (isnan(dimension))
    dimension = 2;
  end
  [dataFX, dataU0] = refreshDataTable(dimension, U_dimension);
  
  set(handles.edit_Dimension, 'String', num2str(dimension));
  set(handles.ut_FunctionAndT,   'data', dataFX)
  

% --- Executes during object creation, after setting all properties.
function edit_Dimension_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_Dimension (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pb_UOprFunct.
function pb_UOprFunct_Callback(hObject, eventdata, handles)
% hObject    handle to pb_UOprFunct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pb_UBox.
function pb_UBox_Callback(hObject, eventdata, handles)
% hObject    handle to pb_UBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

  global U_dimension; global box_alpha; global box_beta;
    global multiplicity;
    
    
  info_str = sprintf('U_Dimension = %s', num2str(U_dimension));
  option.Resize = 'on';
  option.WindowStyle = 'normal';
  option.Interpreter = 'tex';
  
  
  for i = 1 : 1 : U_dimension
    dialogProperties{i} = sprintf('alpha_%d < x', i);
    defaultAnswer{i} = sprintf('%d', -1);
  end
  
  %title = 'Control area - globe';
  num_lines = 1;
  box_alpha = inputdlg(dialogProperties, info_str,  num_lines, defaultAnswer, option);

    
  if (~isempty(box_alpha))
    for i = 1 : 1 : U_dimension
      dialogProperties{i} = sprintf('x < beta_%d', i);
      defaultAnswer{i} = sprintf('%d', 1);
      
    end
    num_lines = 1;
    box_beta = inputdlg(dialogProperties, info_str,  num_lines, defaultAnswer, option);
  end

  
 
  tmp_alpha = str2double(box_alpha);
  tmp_beta = str2double(box_beta);
  tmpstr = {sprintf('Параллелепипед ')}; 
  for i = 1 : 1 : U_dimension
    str = sprintf('%.2f < u%d < %.2f ', tmp_alpha(i), i, tmp_beta(i));
    tmpstr{i+1} = str;
  end
  
   multiplicity = 'paral';
  set(handles.ed_info_USet, 'String', tmpstr);
  
  %title = 'Control area - globe';
 
  
  



% --- Executes on button press in pb_USphere.
function pb_USphere_Callback(hObject, eventdata, handles)
% hObject    handle to pb_USphere (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
  global U_dimension;
  global radiusSphere;
  global centerSphere;
  
    global multiplicity;
  info_str = sprintf('Dimension %s', num2str(U_dimension));
  option.Resize = 'off';
  option.WindowStyle = 'normal';
  option.Interpreter = 'tex';
  dialogProperties = {'Input coordinate:', 'Input radius:'};
  tmp = '';
  for i = 1 : 1 : U_dimension
    tmp = strcat(tmp, sprintf('%d', 0));
  end
  
  defaultAnswer = {tmp, '1'};
  %title = 'Control area - globe';
  numlines = 2;
  answer = inputdlg(dialogProperties, info_str, numlines, defaultAnswer, option);
  if (~isempty(answer))
    [sphere_coord, status1] = str2num(answer{1});
    [sphere_radius, status2] = str2num(answer{2});
  
    input_size = size(sphere_coord);
  
    if ((~status1) || (input_size(2) ~= U_dimension))
      errordlg('Input error or error dimension', 'Coordinates of the ball')
    elseif ((~status2))
      errordlg('Input radius error', 'Radius of the ball')
    else
      radiusSphere = sphere_radius
      centerSphere = sphere_coord;	
    
      
    end
  
    
    tmpstr = {sprintf('Cфера\nРадиус сферы: %.2f\n Центр:', radiusSphere )}; 
    for i = 1 : 1 : U_dimension
      str = sprintf('%.2f, ', sphere_coord(i));
      tmpstr{i+1} = str;
    end
    
    set(handles.ed_info_USet, 'String', tmpstr)
    multiplicity = 'spher';
  end
  


function ed_LeftEnd_Callback(hObject, eventdata, handles)
% hObject    handle to ed_LeftEnd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

  global left; 
  left = str2double(get(hObject,'String'));
  if (isnan(left))
    left = 0;
  end
  set(handles.ed_LeftEnd, 'String', num2str(left));


% --- Executes during object creation, after setting all properties.
function ed_LeftEnd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_LeftEnd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_rightEnd_Callback(hObject, eventdata, handles)
% hObject    handle to ed_rightEnd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

  global right;
  right = str2double(get(hObject,'String'));
  if (isnan(right))
    right = 1;
  end
  
  set(handles.ed_rightEnd, 'String', num2str(right));


% --- Executes during object creation, after setting all properties.
function ed_rightEnd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_rightEnd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_TimeStep_Callback(hObject, eventdata, handles)
% hObject    handle to ed_TimeStep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

  global step;
  step = str2double(get(hObject,'String'));
  if (isnan(step))
    step = 0;
  end
  
  set(handles.ed_TimeStep, 'String', num2str(step));



% --- Executes during object creation, after setting all properties.
function ed_TimeStep_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_TimeStep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_Functional_Callback(hObject, eventdata, handles)
% hObject    handle to edit_Functional (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints:  returns contents of edit_Functional as text
%        str2double(get(hObject,'String')) returns contents of edit_Functional as a double


  global functional;
  functional = get(hObject,'String');
  

% --- Executes during object creation, after setting all properties.
function edit_Functional_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_Functional (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pb_ChooseMethod_ProjectionGrad.
function pb_ChooseMethod_ProjectionGrad_Callback(hObject, eventdata, handles)
% hObject    handle to pb_ChooseMethod_ProjectionGrad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% A lot of methods

% -----------------------------------------------------------------------------------method param
  
  global method;
global alpha_MPG;

  
  
  infoStr  = {'Input alpha', 'Input lambda'};  
  dlg_title = 'Parametrs alpha and lambda';
  num_lines = 1;
  
  def = {'0.01', '10'};
  
  answer = inputdlg(infoStr, dlg_title, num_lines, def);
  alpha_MPG = str2num(answer{1});
  
  
  tmpstr = sprintf('alpha метода проекции градиента= %.2f', alpha_MPG); 
  set(handles.ed_info_Method, 'String', tmpstr);
  method = 'MPG';
  
  
 
  

% --- Executes on button press in pb_ChooseMethod_Approxim.
function pb_ChooseMethod_Approxim_Callback(hObject, eventdata, handles)
% hObject    handle to pb_ChooseMethod_Approxim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global method; global numIter;
  global M_MPP; global E_MPP;
 
infoStr  = {'Input M', 'Input eps'};  
  dlg_title = 'Parametrs M and epsilon';
  num_lines = 1;
  
  def = {'10', '0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1,'};
 

   
  answer = inputdlg(infoStr, dlg_title, num_lines, def);
  M_MPP = str2num(answer{1});
  E_MPP = ones(1, numIter);
  E_MPP = str2num(answer{2}); 
  
 
 
 
  tmpstr = {sprintf('M (количество итераций) метода последовательных приближений = %d\nEk:\n', M_MPP)}; 
    for i = 1 : 1 : numIter
      str = sprintf('%.2f, ', E_MPP(i));
      tmpstr{i+1} = str;
    end
    
    set(handles.ed_info_Method, 'String', tmpstr)
  
  method = 'MPP';
 




% -----------------------------------------------------------------------------------method param

% --- Executes on button press in pb_HoldRightEnd.
function pb_HoldRightEnd_Callback(hObject, eventdata, handles)
% hObject    handle to pb_HoldRightEnd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
  global HoldRightEnd; global betaHRE;
  global boolHRE; global dimension;

 
  info_str = sprintf('Dimension = %s', num2str(dimension));
  option.Resize = 'on';
  option.WindowStyle = 'normal';
  option.Interpreter = 'tex';
  HoldRightEnd = zeros(1, dimension);
  
  dialogProperties{1} = sprintf('x(T)=');
  defaultAnswer = {'1'};


  num_lines = 1;
  answer = inputdlg(dialogProperties, info_str,  num_lines, defaultAnswer, option);
  HoldRightEnd = str2num(answer{1})


  if (~isempty(answer))
    dial_Prop{1} = sprintf('Beta'); dial_def{1} = sprintf('%f', 10);
    num_lines = 1;
    answer = inputdlg(dial_Prop, info_str,  num_lines, dial_def, option);
    betaHRE = str2double(answer{1})
    boolHRE = true;  
  else
    boolHRE = false;
  end
  


% -------------------------------------------------------------------------
function menu_File_Callback(hObject, eventdata, handles)
% hObject    handle to menu_File (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu_Tools_Callback(hObject, eventdata, handles)
% hObject    handle to menu_Tools (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu_FAQ_Callback(hObject, eventdata, handles)
% hObject    handle to menu_FAQ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu_Help_Callback(hObject, eventdata, handles)
% hObject    handle to menu_Help (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Help


% --------------------------------------------------------------------
function menu_About_Callback(hObject, eventdata, handles)
% hObject    handle to menu_About (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

About


% --------------------------------------------------------------------
function menu_Start_Callback(hObject, eventdata, handles)
% hObject    handle to menu_Start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu_Stop_Callback(hObject, eventdata, handles)
% hObject    handle to menu_Stop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu_Open_Callback(hObject, eventdata, handles)
% hObject    handle to menu_Open (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

  
  global dataFX; global dataU0; global dimension; global U_dimension;
  global step; global right; global left; global functional;
  
  
    [FName, PName] = uigetfile; 
    if ~ isequal(FName, 0) 
      FullName = strcat(PName, FName); 
      S = load(FullName);
      f = fieldnames(S);
dimension =  str2num(S.(f{3}));
      set(handles.edit_Dimension, 'String', S.(f{3}));
U_dimension =  str2num(S.(f{4}));
      set(handles.ed_U_dimension, 'String', S.(f{4}));
left =  str2double(S.(f{6}));
      set(handles.ed_LeftEnd,     'String', S.(f{6}));
step =  str2double(S.(f{5}));
      set(handles.ed_TimeStep,    'String', S.(f{5}));
right = str2double( S.(f{7}));
      set(handles.ed_rightEnd,    'String', S.(f{7}));
dataFX =  S.(f{1});
      set(handles.ut_FunctionAndT,  'Data', S.(f{1}));
dataU0 =  S.(f{2});
      set(handles.ut_functionU0,    'Data', S.(f{2}));      
      
     functional = S.(f{8});  
     set(handles.edit_Functional, 'String',  (S.(f{8})));
    
      dataU0 = dataU0(:, 2);
    dataFX = dataFX(:, 2);
   
      
    end

% --------------------------------------------------------------------
function menu_Save_Callback(hObject, eventdata, handles)
% hObject    handle to menu_Save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu_SaveAs_Callback(hObject, eventdata, handles)
% hObject    handle to menu_SaveAs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


  dataFX = get(handles.ut_FunctionAndT, 'Data');
  dataU0 = get(handles.ut_functionU0, 'Data');
  dimension = get(handles.edit_Dimension, 'String');
  U_dimension = get(handles.ed_U_dimension, 'String');
  step = get(handles.ed_TimeStep,    'String');
  left = get(handles.ed_LeftEnd,     'String');
  right = get(handles.ed_rightEnd,     'String');
  functional = get(handles.edit_Functional, 'String');
  uisave({'dimension', 'U_dimension', 'left', 'step', 'right', 'dataFX', 'dataU0', 'functional'}, 'example');
 
 
% --------------------------------------------------------------------
function menu_Exit_Callback(hObject, eventdata, handles)
% hObject    handle to menu_Exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(0,'ShowHiddenHandles','on')
delete(get(0,'Children'))
close all;



function ed_U_dimension_Callback(hObject, eventdata, handles)
% hObject    handle to ed_U_dimension (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_U_dimension as text
%        str2double(get(hObject,'String')) returns contents of ed_U_dimension as a double

  global U_dimension; global dimension;
  U_dimension = str2double(get(hObject,'String'));
  
  if (isnan(U_dimension))
    U_dimension = 2;
  end
  [dataFX, dataU0] = refreshDataTable(dimension, U_dimension);
  
  set(handles.ed_U_dimension, 'String', num2str(U_dimension));
  set(handles.ut_functionU0,   'Data', dataU0);


% --- Executes during object creation, after setting all properties.
function ed_U_dimension_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_U_dimension (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end






%--------------/// INF0 /// -----------------/// INF0 /// -----------------
function ed_info_StopCondition_Callback(hObject, eventdata, handles)
% hObject    handle to ed_info_StopCondition (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_info_StopCondition as text
%        str2double(get(hObject,'String')) returns contents of ed_info_StopCondition as a double


% --- Executes during object creation, after setting all properties.
function ed_info_StopCondition_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_info_StopCondition (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_info_USet_Callback(hObject, eventdata, handles)
% hObject    handle to ed_info_USet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_info_USet as text
%        str2double(get(hObject,'String')) returns contents of ed_info_USet as a double


% --- Executes during object creation, after setting all properties.
function ed_info_USet_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_info_USet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.


  
  if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_info_Method_Callback(hObject, eventdata, handles)
% hObject    handle to ed_info_Method (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_info_Method as text
%        str2double(get(hObject,'String')) returns contents of ed_info_Method as a double


% --- Executes during object creation, after setting all properties.
function ed_info_Method_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




function edit_term_functional_Callback(hObject, eventdata, handles)

  global term_functional;
  term_functional = get(hObject,'String');


% --- Executes during object creation, after setting all properties.
function edit_term_functional_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in cb_StopCond_UK.
function cb_StopCond_UK_Callback(hObject, eventdata, handles)
% hObject    handle to cb_StopCond_UK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb_StopCond_UK



global stopJ;
global stopU;

global eps_stopU;

stopU =  get(hObject,'Value');
  info_str = sprintf('Epsilon');
 
  dialogProperties{1} = sprintf('eps=');
  defaultAnswer = {'0.01'};


  num_lines = 1;
  get(hObject,'Value')
  
  if stopU == 1
    answer = inputdlg(dialogProperties, info_str,  num_lines, defaultAnswer);
    eps_stopU = str2num(answer{1})
  end
