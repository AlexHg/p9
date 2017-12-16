

function varargout = guie9(varargin)
% GUIE9 MATLAB code for guie9.fig
%      GUIE9, by itself, creates a new GUIE9 or raises the existing
%      singleton*.
%
%      H = GUIE9 returns the handle to a new GUIE9 or the handle to
%      the existing singleton*.
%
%      GUIE9('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIE9.M with the given input arguments.
%
%      GUIE9('Property','Value',...) creates a new GUIE9 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guie9_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guie9_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guie9

% Last Modified by GUIDE v2.5 06-Dec-2017 14:48:54

% Begin initialization code - DO NOT EDIT

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guie9_OpeningFcn, ...
                   'gui_OutputFcn',  @guie9_OutputFcn, ...
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


% --- Executes just before guie9 is made visible.
function guie9_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no ouput args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guie9 (see VARARGIN)

% Choose default command line ouput for guie9
handles.ouput = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guie9 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guie9_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning ouput args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line ouput from handles structure
varargout{1} = handles.ouput;


% --- Executes on button press in A.
function A_Callback(hObject, eventdata, handles)
% hObject    handle to A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(hObject.String== 'A*')
    hObject.String='A';
else
    hObject.String='A*';
end


% --- Executes on button press in B.
function B_Callback(hObject, eventdata, handles)
% hObject    handle to B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(hObject.String== 'B*')
    hObject.String='B';
else
    hObject.String='B*';
end





% --- Executes on button press in C.
function C_Callback(hObject, eventdata, handles)
% hObject    handle to C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(hObject.String== 'C*')
    hObject.String='C';
else
    hObject.String='C*';
end

% --- Executes on button press in D.
function D_Callback(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(hObject.String== 'D*')
    hObject.String='D';
else
    hObject.String='D*';
end


% --- Executes on button press in E.
function E_Callback(hObject, eventdata, handles)
% hObject    handle to E (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(hObject.String== 'E*')
    hObject.String='E';
else
    hObject.String='E*';
end

% --- Executes on button press in F.
function F_Callback(hObject, eventdata, handles)
% hObject    handle to F (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(hObject.String== 'F*')
    hObject.String='F';
else
    hObject.String='F*';
end


% --- Executes on button press in G.
function G_Callback(hObject, eventdata, handles)
% hObject    handle to G (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if( hObject.String== 'G*')
    hObject.String='G';
else
    hObject.String='G*';
end




function input_Callback(hObject, eventdata, handles)
% hObject    handle to input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input as text
%        str2double(get(hObject,'String')) returns contents of input as a double


% --- Executes during object creation, after setting all properties.
function input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ouput_Callback(hObject, eventdata, handles)
% hObject    handle to ouput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ouput as text
%        str2double(get(hObject,'String')) returns contents of ouput as a double


% --- Executes during object creation, after setting all properties.
function ouput_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ouput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Ai = 0;
Bi = 0;
Ci = 0;
Di = 0;
Ei = 0;
Fi = 0;
Gi = 0;
if( handles.A.String== 'A*')
    Ai = 1;
else
    Ai = 0;
end
if( handles.B.String== 'B*')
    Bi = 1;
else
    Bi = 0;
end
if( handles.C.String== 'C*')
    Ci = 1;
else
    Ci = 0;
end
if( handles.D.String== 'D*')
    Di = 1;
else
    Di = 0;
end
if( handles.E.String== 'E*')
    Ei = 1;
else
    Ei = 0;
end
if( handles.F.String== 'F*')
    Fi = 1;
else
    Fi = 0;
end
if( handles.G.String== 'G*')
    Gi = 1;
else
    Gi = 0;
end
input = [Ai Bi Ci Di Ei Fi Gi];
handles.input.String = num2str(input(1,:));


    P= [1 1 1 1 1 1 0;   %0
        0 1 1 0 0 0 0;   %1
        1 1 0 1 1 0 1;   %2
        1 1 1 1 0 0 1;   %3
        0 1 1 0 0 1 1;   %4
        1 0 1 1 0 1 1;   %5
        1 0 1 1 1 1 1;   %6
        1 1 1 0 0 0 0;   %7
        1 1 1 1 1 1 1;   %8
        1 1 1 1 0 1 1]'; %9
    PL=[1 1 1 0 1 1 1;   %A
        0 0 1 1 1 1 1;   %B
        1 0 0 1 1 1 0;   %C
        0 1 1 1 1 0 1;   %D
        1 0 0 1 1 1 1;   %E
        1 0 0 0 1 1 1]'; %F

    T= [0 0 0 0 0;
        0 0 0 0 1;
        0 0 0 1 0;
        0 0 0 1 1;
        0 0 1 0 0;
        0 0 1 0 1;
        0 0 1 1 0;
        0 0 1 1 1;
        0 1 0 0 0;
        0 1 0 0 1]';
    TL=[0 1 0 1 0;
        0 1 0 1 1;
        0 1 1 0 0;
        0 1 1 0 1;
        0 1 1 1 0;
        0 1 1 1 1]';

     [net,w,b,resultado] = getMLP(input, P, PL, T, TL);
     handles.output.String = num2str(resultado);

     
function [net,w,b,resultado] = getMLP(input, P, PL, T, TL)
    net =  perceptron;
    isNumber = 0;
    %input = [0 1 1 0 0 0 0];

    [~, s]=size(P);
    for i = 1:s
        tempP = P';
        if all(tempP(i,:)==input)
            isNumber = 1;
            break;
        end
    end

    if isNumber
        %% Entrenamiento numeros

        net = train(net,P,T);
        w = net.iw{1,1};
        b = net.b{1};
        a = net(P);

        temp_mx = [input;zeros(10,7)]';
        a = net(temp_mx)';
        resultado = a(1,:);
    else
        %% Entrenamiento letras

        net = train(net,PL,TL);
        w = net.iw{1,1};
        b = net.b{1};
        a = net(PL);

        temp_mx = [input;zeros(6,7)]';
        a = net(temp_mx)';
        resultado = a(1,:);
    end



function output_Callback(hObject, eventdata, handles)
% hObject    handle to output (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of output as text
%        str2double(get(hObject,'String')) returns contents of output as a double


% --- Executes during object creation, after setting all properties.
function output_CreateFcn(hObject, eventdata, handles)
% hObject    handle to output (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
