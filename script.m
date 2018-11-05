clc
clear
close
img = imread('shu.bmp');
img = imtranslate(img,[1 1]);
%img = imresize(img,[32 192]);
% [nx,ny]=size(img);
img=im2double(img);

m = 0;
n = 1;
ans=bateman(m,n,img);