function s = naiveSentenceSep()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
a = input('Input the path of image\n','s');
img = imread(a);
info = imfinfo(a);clear a;
grimg = rgb2gray(img);
row = info.Height;
col = info.Width;
indmat = (grimg == 255);
counter = sum(indmat,2);
black = find(counter' ~= col);
white = find(counter' == col);
black = black';
count = 1;
A(1,1) = black(1,1);
for i = 2:length(black)
if (black(i,1) - black(i-1,1)) ~= 1
A(count,2)= black(i-1);
count = count + 1;
A(count,1) = black(i);
end
end
A(count,2) = black(i);
 for i = 1:count
      temp = [];
      for j = A(i,1):A(i,2)
            temp = [temp;indmat(j,:)];
      end
      temp = 255*temp;
      field = 'f';
      value = {temp};
      s(i) = struct(field,value);
end