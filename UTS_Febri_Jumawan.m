function varargout = UTS_Febri_Jumawan(varargin)
%UTS_FEBRI_JUMAWAN M-file for UTS_Febri_Jumawan.fig
%      UTS_FEBRI_JUMAWAN, by itself, creates a new UTS_FEBRI_JUMAWAN or raises the existing
%      singleton*.
%
%      H = UTS_FEBRI_JUMAWAN returns the handle to a new UTS_FEBRI_JUMAWAN or the handle to
%      the existing singleton*.
%
%      UTS_FEBRI_JUMAWAN('Property','Value',...) creates a new UTS_FEBRI_JUMAWAN using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to UTS_Febri_Jumawan_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      UTS_FEBRI_JUMAWAN('CALLBACK') and UTS_FEBRI_JUMAWAN('CALLBACK',hObject,...) call the
%      local function named CALLBACK in UTS_FEBRI_JUMAWAN.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help UTS_Febri_Jumawan

% Last Modified by GUIDE v2.5 08-May-2021 03:22:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @UTS_Febri_Jumawan_OpeningFcn, ...
                   'gui_OutputFcn',  @UTS_Febri_Jumawan_OutputFcn, ...
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


% --- Executes just before UTS_Febri_Jumawan is made visible.
function UTS_Febri_Jumawan_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for UTS_Febri_Jumawan
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes UTS_Febri_Jumawan wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = UTS_Febri_Jumawan_OutputFcn(hObject, eventdata, handles)
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
[nama_file1,nama_path1] = uigetfile(...
    {'*.bmp; *.jpg', 'Type File (*.bmp, *.jpg, *.png)';
    '*.bmp', 'File Bitmap(*.bmp)';...
    '*.jpg', 'File Jpeg(*.jpg)';
    '*.png', 'File Png(*.png)';
    '*.*', 'Semua File (*.*)'},...
    'Pilih Gambar');

if ~isequal (nama_file1, 0);
 handles.data1=imread(fullfile(nama_path1, nama_file1));
 guidata(hObject,handles);
 handles.current_data1=handles.data1;
 axes(handles.axes1)
 imshow(handles.current_data1);
 title('Citra Asli')
else
    return
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

% --- Executes on button press in radiobutton_nilairgb.
function radiobutton_nilairgb_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_nilairgb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton_nilairgb
red=mean(mean(handles.data1(:,:,1)));
green=mean(mean(handles.data1(:,:,2)));
blue=mean(mean(handles.data1(:,:,3)));

set(handles.edit1,'string',red);
set(handles.edit2,'string',green);
set(handles.edit3,'string',blue);


% --- Executes on button press in radiobutton_gray.
function radiobutton_gray_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_gray (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton_gray
imagegray = handles.data1;
gray = rgb2gray(imagegray);
axes(handles.axes2);
imshow(gray);
title('Citra Grayscale');

axes(handles.axes3);
h = histogram(gray(:));
h.FaceColor = [0.5 0.5 0.5];
set(gca,'XLim', [0 255]);
set(gca, 'YLim', [0 15000]);
grid on
guidata(hObject, handles);
title('Histogram Grayscale');


% --- Executes on button press in radiobutton_binary.
function radiobutton_binary_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_binary (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton_binary
biner = handles.data1;
bw = im2bw(biner);
bwmap = zeros(2,3);
bwmap(2,:)=1;
axes(handles.axes2);
imshow(bw);
title('Citra Binary');

axes(handles.axes3);
histogram(double(bw(:)),2, 'FaceColor',[0 0 0], 'EdgeColor',[0 0 0], 'FaceAlpha',1)
set(gca, 'XLim',[0 1])
grid on
guidata(hObject, handles);
title('Histogram Binary');

% --- Executes on button press in pushbutton_reset.
function pushbutton_reset_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
citra=handles.data1; 
axes(handles.axes2);
cla;
imshow(citra); %membuat citra asli blm terkena filter tetap ada
axes(handles.axes3);
cla reset;


% --- Executes on button press in radiobutton_red.
function radiobutton_red_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_red (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton_red
citra1 = handles.data1;
R = citra1(:,:,1);
G = citra1 (:,:,2);
B = citra1(:,:,3);
a = zeros(size(citra1, 1), size(citra1, 2));
redOnly = cat (3, R, a, a);
greenOnly = cat(3, a, G, a);
blueOnly = cat(3, a, a, B);
axes(handles.axes2);
imshow(redOnly);
title('Citra Layer Red');
axes(handles.axes3);
h = histogram(R(:));
grid on
guidata(hObject, handles);
title('Histogram Layer Red');

% --- Executes on button press in radiobutton_green.
function radiobutton_green_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_green (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton_green
citra1 = handles.data1;
R = citra1(:,:,1);
G = citra1 (:,:,2);
B = citra1(:,:,3);
a = zeros(size(citra1, 1), size(citra1, 2));
redOnly = cat (3, R, a, a);
greenOnly = cat(3, a, G, a);
blueOnly = cat(3, a, a, B);
axes(handles.axes2);
imshow(greenOnly);
title('Citra Layer Green');
axes(handles.axes3);
histogram(G(:));
grid on
guidata(hObject, handles);
title('Histogram Layer Green');


% --- Executes on button press in radiobutton_blue.
function radiobutton_blue_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_blue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton_blue
citra1 = handles.data1;
R = citra1(:,:,1);
G = citra1 (:,:,2);
B = citra1(:,:,3);
a = zeros(size(citra1, 1), size(citra1, 2));
redOnly = cat (3, R, a, a);
greenOnly = cat(3, a, G, a);
blueOnly = cat(3, a, a, B);
axes(handles.axes2);
imshow(blueOnly);
title('Citra Layer Blue');
axes(handles.axes3);
histogram(B(:))
grid on
guidata(hObject, handles);
title('Histogram Layer Blue');