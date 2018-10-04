function varargout = chartgui(varargin)
% CHARTGUI MATLAB code for chartgui.fig
%      CHARTGUI, by itself, creates a new CHARTGUI or raises the existing
%      singleton*.
%
%      H = CHARTGUI returns the handle to a new CHARTGUI or the handle to
%      the existing singleton*.
%
%      CHARTGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CHARTGUI.M with the given input arguments.
%
%      CHARTGUI('Property','Value',...) creates a new CHARTGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before chartgui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to chartgui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help chartgui


% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @chartgui_OpeningFcn, ...
                   'gui_OutputFcn',  @chartgui_OutputFcn, ...
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


% --- Executes just before chartgui is made visible.
function chartgui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to chartgui (see VARARGIN)

% Choose default command line output for chartgui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes chartgui wait for user response (see UIRESUME)
% uiwait(handles.figure1);
axes(handles.axes1);
x=[4 8 16 32 64];
y1=[0.28 0.26 0.25 0.25 0.24];
y2=[0.29 0.29 0.31 0.35 0.33];
plot(x,y1,'o-r');
hold on
plot(x,y2,'*-b');
hold off;
ylabel('吞吐率');
xlabel('RFID标签数');
axis([0 70 0.15 0.50]) 
title('改进算法与原始算法吞吐率对比图');
legend('原始算法','改进算法',1)

axes(handles.axes2);
x=[0 500 1000 1500 2000 2500 3000];
y1=[0 1700 2100 3000 4000 4100 4150];
y2=[0 1700 2000 2500 2800 3300 3500];
plot(x,y1,'o-r');
hold on
plot(x,y2,'*-b');
hold off;
ylabel('查询次数');
xlabel('RFID标签数');
title('改进算法与原始算法查询次数对比图');
legend('原始算法','改进算法',2)


% --- Outputs from this function are returned to the command line.
function varargout = chartgui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
