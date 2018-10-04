function varargout = rfidpulsechangegui(varargin)
% RFIDPULSECHANGEGUI MATLAB code for rfidpulsechangegui.fig
%      RFIDPULSECHANGEGUI, by itself, creates a new RFIDPULSECHANGEGUI or raises the existing
%      singleton*.
%
%      H = RFIDPULSECHANGEGUI returns the handle to a new RFIDPULSECHANGEGUI or the handle to
%      the existing singleton*.
%
%      RFIDPULSECHANGEGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RFIDPULSECHANGEGUI.M with the given input arguments.
%
%      RFIDPULSECHANGEGUI('Property','Value',...) creates a new RFIDPULSECHANGEGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before rfidpulsechangegui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to rfidpulsechangegui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help rfidpulsechangegui

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @rfidpulsechangegui_OpeningFcn, ...
                   'gui_OutputFcn',  @rfidpulsechangegui_OutputFcn, ...
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


% --- Executes just before rfidpulsechangegui is made visible.
function rfidpulsechangegui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to rfidpulsechangegui (see VARARGIN)

% Choose default command line output for rfidpulsechangegui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes rfidpulsechangegui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = rfidpulsechangegui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


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
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


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
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


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



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tag_count1=get(handles.edit1,'String');

%chushizhi1=get(handles.edit1,'String');

xunhuancishu1=get(handles.edit5,'String');
tag_count = str2num(tag_count1);
tag_count2 = tag_count;
%chushizhi = str2num(chushizhi1);
xunhuancishu = str2num(xunhuancishu1);
A(1,tag_count)=0;
fid=fopen('testdata.txt','r');
A=fread(fid,tag_count,'int32');
fclose(fid); 
dec2bin(A);
if(tag_count>=5&&tag_count<=11)
     zhen=8;
end
if(tag_count>=12&&tag_count<=22)
     zhen=16;
end
if(tag_count>=23&&tag_count<=44)
     zhen=32;
 end
if(tag_count>=45&&tag_count<=88)
     zhen=64;
 end
if(tag_count>=89&&tag_count<=176)
     zhen=128;
 end
if(tag_count>=177&&tag_count<=180)
     zhen=256;
 end
B(1,tag_count)=0;%  
request_time=0; %   
answer_time=0; %    
k=1;%
C(1,tag_count)=0;  %
D(1,tag_count)=0;  
n=1;
identify_tag(1,tag_count)=0; 
m=1;
p=0;
q=0;
while tag_count>0  
    request_time=request_time+1;   
    for i=1:tag_count
        B(i)=ceil((rand(1)*zhen)); 
    end
    n=1;
    for j=1:zhen        
        k=1;
        answer_time=answer_time+1; 
        for i=1:tag_count        
            if j==B(i)
                C(k)=i;           
                k=k+1;
            end
        end 
        if k==1                   
          ;
        elseif k==2               
            D(n)=C(1);          
            n=n+1;
            identify_tag(m)=A(C(1));
            m=m+1;
        else
          q=q+1;
        end
    end 
   n-1;
    for i=1:tag_count            
        flag=0;                 
      for j=1:(n-1)              
            if i==D(j)
                flag=1;
                D(j)=0;
                break;
            end
        end
        if flag==1              
            if p==0             
                p=i;
            end    
        else
            if p~=0
                A(p)=A(i);       
                p=p+1; 
            end
        end
    end
    tag_count=tag_count-(n-1);    
end
r=request_time+answer_time;
identify_tag;
dec2bin(identify_tag);

e=num2str(dec2bin(identify_tag));
a = num2str(tag_count2);
b = num2str(r);
c = num2str(tag_count2/r);




set(handles.edit2,'String',a);

set(handles.edit3,'String',b);

set(handles.edit4,'String',c);

set(handles.edit6,'String',e);

guidata(hObject, handles);

function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
