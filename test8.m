pkg load image;
img = imread("sand.png");
figure,imshow(img);

img1 = imerode(img,strel("square",70));
figure,imshow(img1);

img2 = rgb2gray(img1);
img3 = rgb2gray(img);
res = double(img3) - double(img2);
res1 = mat2gray(res);
res2 = im2bw(res1,0.3);

x = strel('diamond',1);
res3 = imerode(res2,x);
res4 = bwareaopen(res2,20);
figure,imshow(res4);
eti = bwlabel(res4);
eti = label2rgb(eti);
imshow(eti);
