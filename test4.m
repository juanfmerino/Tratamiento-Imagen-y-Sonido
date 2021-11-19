pkg load image
c1 = imread("ant.png");
g1 = rgb2gray(c1); 
fil = fspecial("laplacian");
f1 = imfilter(c1,fil);
figure, imshow (f1);
e1 = edge(g1, "sobel");
e2 = edge (g1, "canny");
e3= edge (g1,"log");

res1=1-e1;
res2=1-e2;
res3=1-e3;
figure , imshow(res1);
figure , imshow(res2);
figure , imshow(res3);