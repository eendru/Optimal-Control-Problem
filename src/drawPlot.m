function varargout = drawPlot(varargin)
% DRAWPLOT MATLAB code for drawPlot.fig
%      DRAWPLOT, by itself, creates a new DRAWPLOT or raises the existing
%      singleton*.
%
%      H = DRAWPLOT returns the handle to a new DRAWPLOT or the handle to
%      the existing singleton*.
%
%      DRAWPLOT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DRAWPLOT.M with the given input arguments.
%
%      DRAWPLOT('Property','Value',...) creates a new DRAWPLOT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before drawPlot_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to drawPlot_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help drawPlot

% Last Modified by GUIDE v2.5 03-Dec-2013 02:58:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @drawPlot_OpeningFcn, ...
                   'gui_OutputFcn',  @drawPlot_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
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


% --- Executes just before drawPlot is made visible.
function drawPlot_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to drawPlot (see VARARGIN)

% Choose default command line output for drawPlot
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes drawPlot wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = drawPlot_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

  global all_odeX;
  global all_W;
  global tEND;
  global all_gridValueU0;
  global invT; global alpha_MPG;
  
  global calcTime; 
 global znach_function;
  set(handles.rb_Single, 'Value', 1);

  axes(handles.conjucatePlot);
  plot(tEND, cell2mat(all_W{end}));
  
  axes(handles.ukPlot);
  plot(tEND, cell2mat(all_gridValueU0{end}));
  
  axes(handles.odexPlot);
  plot(tEND, cell2mat(all_odeX{end}));
  
  
  resFunct = 0;%trapz(tEND, cell2mat(all_odeX{end}
   
  str = sprintf('alpha: %.3f\n  Значение функционала: %.6f\n Время вычислений: %.3f', alpha_MPG,  znach_function, calcTime);
  set(handles.editInfo, 'String', str);




function editInfo_Callback(hObject, eventdata, handles)
% hObject    handle to editInfo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editInfo as text
%        str2double(get(hObject,'String')) returns contents of editInfo as a double


% --- Executes during object creation, after setting all properties.
function editInfo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editInfo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in PB_exit.
function PB_exit_Callback(hObject, eventdata, handles)
% hObject    handle to PB_exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


close (handles.figure1);


% --- Executes on button press in rb_Multi.
function rb_Multi_Callback(hObject, eventdata, handles)
% hObject    handle to rb_Multi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb_Multi

 multi = get(hObject,'Value');
 
   global all_odeX;
  global all_W;
  global tEND;
  global all_gridValueU0;
  global invT; global alpha_MPG;
 global numIter; global calcTime; 
  
  numIter = size(all_W);
  numIter = numIter(2)
 if multi == 1
set(handles.rb_Single, 'Value', 0);
 %  axes(handles.conjucatePlot);
 %  cla;
 %  axes(handles.ukPlot);
 %  cla;
 %  axes(handles.odexPlot)
 %  cla;
   
    set(handles.conjucatePlot, 'NextPlot', 'add');
    axes(handles.conjucatePlot);
  
 
    for i = 1 : 1 : numIter
       plot(tEND, cell2mat(all_W{1, i}));
     end
     
     set(handles.ukPlot, 'NextPlot', 'add');
     axes(handles.ukPlot);
     
     for i = 1 : 1 : numIter
       plot(tEND, cell2mat(all_gridValueU0{1, i}));
     end
   
     set(handles.odexPlot, 'NextPlot', 'add');
     axes(handles.odexPlot)
     for i = 1 : 1 : numIter
       plot(tEND, cell2mat(all_odeX{1, i}));
     end
  
  resFunct = trapz(tEND, cell2mat(all_odeX{end}));
  

 
 end
 


% --- Executes on button press in rb_Single.
function rb_Single_Callback(hObject, eventdata, handles)
% hObject    handle to rb_Single (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb_Single

global all_odeX;
  global all_W;
  global tEND;
  global all_gridValueU0;
  global invT; global alpha_MPG;
  
 global numIter; global calcTime; 

  single = get(hObject,'Value') ;
  if single == 1
      
set(handles.rb_Multi, 'Value', 0);
  
  
 set(handles.conjucatePlot, 'NextPlot', 'replace');
  axes(handles.conjucatePlot);
  plot(tEND, cell2mat(all_W{end}));
  
   set(handles.ukPlot, 'NextPlot', 'replace');
  axes(handles.ukPlot);
  plot(tEND, cell2mat(all_gridValueU0{end}));
  
   set(handles.odexPlot, 'NextPlot', 'replace');
  axes(handles.odexPlot);
  plot(tEND, cell2mat(all_odeX{end}));
  resFunct = trapz(tEND, cell2mat(all_odeX{end}));
 

  

  end
  
