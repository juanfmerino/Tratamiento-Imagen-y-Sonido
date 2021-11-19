pkg load image
img1 = imread("a1f.jpg");
img2 = imread("a1i.jpg");
img1= rgb2gray(img1);
img2 = rgb2gray(img2);
res = double(img2) - double(img1);
resa = mat2gray(res);
resb = im2bw(resa,0.55);
resb=1-restb;
figure,imshow(resb);
sw = strel("diamond",1);
id = imopen(restb,sw);
foto = imfill(id, "holes");
eti = bwlabel(foto);
eti = label2rgb (eti);
figure,imshow(eti);