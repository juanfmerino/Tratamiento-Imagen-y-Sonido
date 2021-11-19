pkg load image
coche = imread ("a2i.jpg");
carretera=imread("a2f.jpg");
ch = rgb2gray(coche);
cr = rgb2gray(carretera);
figure, imshow(cr);
figure, imshow(ch);
res = double(ch)-double(cr);
res1=mat2gray(res);
figure,imshow(res1);
figure,imhist(res1);
resb = im2bw(res1,0.35);
figure,imshow(resb);
resc = 1-resb;
figure,imshow(resc);