function varargout = robotodev(varargin)
% ROBOTODEV MATLAB code for robotodev.fig
%      ROBOTODEV, by itself, creates a new ROBOTODEV or raises the existing
%      singleton*.
%
%      H = ROBOTODEV returns the handle to a new ROBOTODEV or the handle to
%      the existing singleton*.
%
%      ROBOTODEV('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ROBOTODEV.M with the given input arguments.
%
%      ROBOTODEV('Property','Value',...) creates a new ROBOTODEV or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before robotodev_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to robotodev_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%   
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help robotodev

% Last Modified by GUIDE v2.5 29-Dec-2019 19:43:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @robotodev_OpeningFcn, ...
                   'gui_OutputFcn',  @robotodev_OutputFcn, ...
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


% --- Executes just before robotodev is made visible.
function robotodev_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to robotodev (see VARARGIN)
set(handles.edit29,'Visible','on');
    set(handles.edit60,'Visible','off');
    set(handles.edit61,'Visible','off');
    set(handles.edit62,'Visible','off');
    set(handles.edit63,'Visible','off');
    set(handles.edit64,'Visible','off');
    set(handles.edit65,'Visible','off');
    set(handles.text56,'Visible','off');
    set(handles.text57,'Visible','off');
    set(handles.text58,'Visible','off');
    set(handles.text59,'Visible','off');
    set(handles.text60,'Visible','off');
    set(handles.text61,'Visible','off');
% Choose default command line output for robotodev
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes robotodev wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = robotodev_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%edit2 = cellstr(sym2cell(TR_H));
    theta1 = str2num(get(handles.edit14, 'String'))
    theta2 = str2num(get(handles.edit15, 'String'))
    theta3 = str2num(get(handles.edit16, 'String'))
    theta4 = str2num(get(handles.edit21, 'String'))
    theta5 = str2num(get(handles.edit22, 'String'))
    theta6 = str2num(get(handles.edit23, 'String'))
    d1 = str2num(get(handles.edit24, 'String'))
    d4 = str2num(get(handles.edit25, 'String'))
    d6 = str2num(get(handles.edit26, 'String'))
    a1 = str2num(get(handles.edit30, 'String'))
    a2 = str2num(get(handles.edit32, 'String'))
    a3 = str2num(get(handles.edit33, 'String'))
    
T0_1=[cos(theta1) 0 -sin(theta1) a1*cos(theta1) ;
      sin(theta1)  0 -cos(theta1) a1*sin(theta1) ;
       0 -1 0 d1  ; 0 0 0 1];
   
T1_2=[cos(theta2) 0 -sin(theta2) a2*cos(theta2) ;
      sin(theta2)  0 -cos(theta2) a2*sin(theta2) ;
       0 0 1 0  ; 0 0 0 1];
   
T2_3=[cos(theta3) 0 -sin(theta3) a3*cos(theta3) ;
      sin(theta3)  0 -cos(theta3) a3*sin(theta3) ;
       0 0 0 0  ; 0 0 0 1];
   
T3_4=[cos(theta4) 0 -sin(theta4) 0 ;
      sin(theta4)  0 cos(theta4) 0 ;
       0 -1 0 d4  ; 0 0 0 1];
   
T4_5=[cos(theta5) 0 -sin(theta5) 0 ;
      sin(theta5)  0 -cos(theta5) 0 ;
       0 1 0 0  ; 0 0 0 1];
   
T5_6=[cos(theta6)  -sin(theta6) 0 0 ;
      sin(theta6)   cos(theta6) 0 0 ;
       0 0 1 0  ; 0 0 0 1];  

TR_H=T0_1*T1_2*T2_3*T3_4*T4_5*T5_6
    set(handles.edit29,'Visible','on');
    set(handles.edit60,'Visible','off');
    set(handles.edit61,'Visible','off');
    set(handles.edit62,'Visible','off');
    set(handles.edit63,'Visible','off');
    set(handles.edit64,'Visible','off');
    set(handles.edit65,'Visible','off');
    set(handles.text56,'Visible','off');
    set(handles.text57,'Visible','off');
    set(handles.text58,'Visible','off');
    set(handles.text59,'Visible','off');
    set(handles.text60,'Visible','off');
    set(handles.text61,'Visible','off');
set(handles.edit29, 'Max', 5, 'String', "|"+num2str(TR_H)+"|");
set(handles.text63, 'Max', 5, 'String', "-Ýleri Kinematik Matrisi gösteriliyor.");



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    syms  theta1 theta2 theta3 theta4 theta5 theta6    
    d1 = str2num(get(handles.edit24, 'String'))
    d4 = str2num(get(handles.edit25, 'String'))
    d6 = str2num(get(handles.edit26, 'String'))
    a1 = str2num(get(handles.edit30, 'String'))
    a2 = str2num(get(handles.edit32, 'String'))
    a3 = str2num(get(handles.edit33, 'String'))
    
T0_1=[cos(theta1) 0 -sin(theta1) a1*cos(theta1) ;
      sin(theta1)  0 -cos(theta1) a1*sin(theta1) ;
       0 -1 0 d1  ; 0 0 0 1];
   
T1_2=[cos(theta2) 0 -sin(theta2) a2*cos(theta2) ;
      sin(theta2)  0 -cos(theta2) a2*sin(theta2) ;
       0 0 1 0  ; 0 0 0 1];
   
T2_3=[cos(theta3) 0 -sin(theta3) a3*cos(theta3) ;
      sin(theta3)  0 -cos(theta3) a3*sin(theta3) ;
       0 0 0 0  ; 0 0 0 1];
   
T3_4=[cos(theta4) 0 -sin(theta4) 0 ;
      sin(theta4)  0 cos(theta4) 0 ;
       0 -1 0 d4  ; 0 0 0 1];
   
T4_5=[cos(theta5) 0 -sin(theta5) 0 ;
      sin(theta5)  0 -cos(theta5) 0 ;
       0 1 0 0  ; 0 0 0 1];
   
T5_6=[cos(theta6)  -sin(theta6) 0 0 ;
      sin(theta6)   cos(theta6) 0 0 ;
       0 0 1 0  ; 0 0 0 1];  
    TR_H=T0_1*T1_2*T2_3*T3_4*T4_5*T5_6;
    A=[0;0;1];
    T06_ja=jacobian(TR_H(1:3,4),[theta1; theta2; theta3; theta4; theta5; theta6])
    theta1 = str2num(get(handles.edit14, 'String'))
    theta2 = str2num(get(handles.edit15, 'String'))
    theta3 = str2num(get(handles.edit16, 'String'))
    theta4 = str2num(get(handles.edit21, 'String'))
    theta5 = str2num(get(handles.edit22, 'String'))
    theta6 = str2num(get(handles.edit23, 'String'))
    T06_ja=subs(T06_ja, {'theta1','theta2','theta3','theta4','theta5','theta6'}, {theta1,theta2,theta3,theta4,theta5,theta6});
    J0_1= T0_1(1:3,1:3)*A;
    J1_2= T1_2(1:3,1:3)*A;
    J2_3= T2_3(1:3,1:3)*A;
    J3_4= T3_4(1:3,1:3)*A;
    J4_5= T4_5(1:3,1:3)*A;
    J5_6= T5_6(1:3,1:3)*A;    
    J0_6=[J0_1 J1_2 J2_3 J3_4 J4_5 J5_6];
    J0_6=subs(J0_6, {'theta1','theta2','theta3','theta4','theta5','theta6'}, {theta1,theta2,theta3,theta4,theta5,theta6});
    J=double([T06_ja;J0_6]) 
    set(handles.edit29,'Visible','on');
    set(handles.edit60,'Visible','off');
    set(handles.edit61,'Visible','off');
    set(handles.edit62,'Visible','off');
    set(handles.edit63,'Visible','off');
    set(handles.edit64,'Visible','off');
    set(handles.edit65,'Visible','off');
    set(handles.text56,'Visible','off');
    set(handles.text57,'Visible','off');
    set(handles.text58,'Visible','off');
    set(handles.text59,'Visible','off');
    set(handles.text60,'Visible','off');
    set(handles.text61,'Visible','off');
    set(handles.edit29, 'Max', 5, 'String', "| "+ num2str(J) + " |");
    set(handles.text63, 'Max', 5, 'String', "-Jakobiyen Matrisi gösteriliyor.");

function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2num(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2num(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2num(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2num(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2num(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2num(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2num(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2num(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2num(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2num(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2num(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2num(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2num(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2num(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2num(get(hObject,'String')) returns contents of edit21 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2num(get(hObject,'String')) returns contents of edit22 as a double


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit23_Callback(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit23 as text
%        str2num(get(hObject,'String')) returns contents of edit23 as a double


% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit24_Callback(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit24 as text
%        str2num(get(hObject,'String')) returns contents of edit24 as a double


% --- Executes during object creation, after setting all properties.
function edit24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit25_Callback(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit25 as text
%        str2num(get(hObject,'String')) returns contents of edit25 as a double


% --- Executes during object creation, after setting all properties.
function edit25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit26_Callback(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit26 as text
%        str2num(get(hObject,'String')) returns contents of edit26 as a double


% --- Executes during object creation, after setting all properties.
function edit26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes when entered data in editable cell(s) in uitable1.
function uitable1_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)
set(handles.uitable1,'Data',TR_H);


function edit29_Callback(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit29 as text
%        str2num(get(hObject,'String')) returns contents of edit29 as a double


% --- Executes during object creation, after setting all properties.
function edit29_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit30_Callback(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit30 as text
%        str2num(get(hObject,'String')) returns contents of edit30 as a double


% --- Executes during object creation, after setting all properties.
function edit30_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit32_Callback(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit32 as text
%        str2num(get(hObject,'String')) returns contents of edit32 as a double


% --- Executes during object creation, after setting all properties.
function edit32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit33_Callback(hObject, eventdata, handles)
% hObject    handle to edit33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit33 as text
%        str2num(get(hObject,'String')) returns contents of edit33 as a double


% --- Executes during object creation, after setting all properties.
function edit33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, ~, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
syms theta1 theta2 theta3 theta4 theta5 theta6  ...
    r11 r12 r13 r21 r22 r23 r31 r32 r33;
    px = str2num(get(handles.edit1, 'String'));
    py = str2num(get(handles.edit7, 'String'));
    pz = str2num(get(handles.edit10, 'String'));
    d1 = str2num(get(handles.edit24, 'String'));
    d4 = str2num(get(handles.edit25, 'String'));
    d6 = str2num(get(handles.edit26, 'String'));
    a1 = str2num(get(handles.edit30, 'String'))*pi/180;
    a2 = str2num(get(handles.edit32, 'String'))*pi/180;
    a3 = str2num(get(handles.edit33, 'String'))*pi/180;
    alfa=str2num(get(handles.edit11, 'String'));
    beta=str2num(get(handles.edit12, 'String'));
    gama=str2num(get(handles.edit13, 'String'));
    
    T0_1=[cos(theta1)  -sin(theta1) 0 a1 ; 0  0 1 d1 ;
      -sin(theta1) -cos(theta1) 0 0  ; 0 0 0 1]
   
    T1_2=[cos(theta2)  -sin(theta2) 0 a2 ;
          sin(theta2)  cos(theta2)  0 0 ;
           0 0 1 0  ; 0 0 0 1];

    T2_3=[cos(theta3)  -sin(theta3) 0 a3;   0 0 -1 0 ;
          sin(theta3)   cos(theta3) 0 0 ;   0 0 0 1]

    T3_4=[cos(theta4)  -sin(theta4) 0 0;   0  0 1 d4 ;
          -sin(theta4)   -cos(theta4) 0 0;   0 0 0 1];

    T4_5=[cos(theta5)  -sin(theta5) 0 0 ;
          sin(theta5)  cos(theta5)  0 0 ;
           0 0 1 0  ; 0 0 0 1];

    T5_6=[cos(theta6)  -sin(theta6) 0 0 ;
          sin(theta6)   cos(theta6) 0 0 ;
           0 0 1 0  ; 0 0 0 1];  
       
T1_6 = T1_2*T2_3*T3_4*T4_5*T5_6;
T1_6 = simplify(T1_6);
T2_6 = T2_3*T3_4*T4_5*T5_6;
T2_6 = simplify(T2_6);
T0_6s = [ r11 r12 r13 px;   r21 r22 r23 py; ...
          r31 r32 r33 pz;   0 0 0 1];
T_eqv1 = inv(T0_1)*T0_6s;
T_eqv2 = inv(T1_2)*T_eqv1;

RX_Z=[ cos(alfa)*cos(beta) cos(alfa)*sin(beta)*sin(gama)-sin(alfa)*cos(gama) cos(alfa)*sin(beta)*cos(gama)+sin(alfa)*sin(gama); ...
       sin(alfa)*cos(beta) sin(alfa)*sin(beta)*sin(gama)+cos(alfa)*cos(gama) sin(alfa)*sin(beta)*cos(gama)-cos(alfa)*sin(gama); ...
       -sin(beta) cos(beta)*sin(gama) cos(beta)*cos(gama)];
 
R0_6 =T4_5(1:3,1:3)*T5_6(1:3,1:3);
R0_4=T0_1(1:3,1:3)*T1_2(1:3,1:3)*T2_3(1:3,1:3)*T3_4(1:3,1:3);
R1_6 = simplify(R0_6);
R_eqv4=inv(R0_4)*RX_Z;
R_eqv4=simplify(R_eqv4);
eqv1 = simplify(T1_6(1,4)-T_eqv1(1,4));
eqv2 = simplify(T1_6(2,4)-T_eqv1(2,4));
eqv3 = simplify(T1_6(3,4)-T_eqv1(3,4));
eqv4 = simplify(T2_6(1,4)-T_eqv2(1,4));
eqv5 = simplify(T2_6(2,4)-T_eqv2(2,4));
eqv6 = simplify(T2_6(3,4)-T_eqv2(3,4));
theta3=(solve(eqv3,theta3));
eqv11= subs(eqv1,{'theta3'},{theta3});
eqv22= subs(eqv2,{'theta3'},{theta3});
[theta1, theta2] = solve(eqv11, theta1, theta2);
theta1=double(abs(theta1)*180/pi)
theta2=double(abs(theta2)*180/pi)
theta3=double(abs(theta3)*180/pi)
 R_eqv1 = simplify(R1_6(1,3)-R_eqv4(1,3));
 R_eqv2 = simplify(R1_6(1,2)-R_eqv4(1,2));
 R_eqv3 = simplify(R1_6(2,1)-R_eqv4(2,1));
 theta4=angle(abs(solve(R_eqv1,theta4)));
 R_eqv22= subs(R_eqv2,{'theta4'},{theta4});
 [theta5, theta6] = solve(R_eqv22, theta5, theta6);
 theta4=double(abs(theta4)*180/pi);
 theta5=subs(theta5,{'theta3'},{theta3});
 theta55=double(abs(theta5)*180/pi)
 theta6=double(abs(theta6)*180/pi)
    set(handles.edit29,'Visible','off');
    set(handles.edit60,'Visible','on');
    set(handles.edit61,'Visible','on');
    set(handles.edit62,'Visible','on');
    set(handles.edit63,'Visible','on');
    set(handles.edit64,'Visible','on');
    set(handles.edit65,'Visible','on');
    set(handles.text56,'Visible','on');
    set(handles.text57,'Visible','on');
    set(handles.text58,'Visible','on');
    set(handles.text59,'Visible','on');
    set(handles.text60,'Visible','on');
    set(handles.text61,'Visible','on');
   set(handles.edit60, 'Max', 5, 'String',num2str(theta1(1)));
   set(handles.edit61, 'Max', 5, 'String',num2str(theta2(1)));
   set(handles.edit62, 'Max', 5, 'String',num2str(theta3(1)));
   set(handles.edit63, 'Max', 5, 'String',num2str(theta4(1)));
   set(handles.edit64, 'Max', 5, 'String',num2str(theta55(1)));
   set(handles.edit65, 'Max', 5, 'String',num2str(theta6(1)));
   set(handles.text63, 'Max', 5, 'String', "-Ters Kinematik-Açý deðerleri gösteriliyor.");


function edit60_Callback(hObject, eventdata, handles)
% hObject    handle to edit60 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit60 as text
%        str2double(get(hObject,'String')) returns contents of edit60 as a double


% --- Executes during object creation, after setting all properties.
function edit60_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit60 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit61_Callback(hObject, eventdata, handles)
% hObject    handle to edit61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit61 as text
%        str2double(get(hObject,'String')) returns contents of edit61 as a double


% --- Executes during object creation, after setting all properties.
function edit61_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit62_Callback(hObject, eventdata, handles)
% hObject    handle to edit62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit62 as text
%        str2double(get(hObject,'String')) returns contents of edit62 as a double


% --- Executes during object creation, after setting all properties.
function edit62_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit63_Callback(hObject, eventdata, handles)
% hObject    handle to edit63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit63 as text
%        str2double(get(hObject,'String')) returns contents of edit63 as a double


% --- Executes during object creation, after setting all properties.
function edit63_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit64_Callback(hObject, eventdata, handles)
% hObject    handle to edit64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit64 as text
%        str2double(get(hObject,'String')) returns contents of edit64 as a double


% --- Executes during object creation, after setting all properties.
function edit64_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit65_Callback(hObject, eventdata, handles)
% hObject    handle to edit65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit65 as text
%        str2double(get(hObject,'String')) returns contents of edit65 as a double


% --- Executes during object creation, after setting all properties.
function edit65_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
