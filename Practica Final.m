pkg load image
im1 = imread("celulas.jpg");
im2 = rgb2ycbcr(im1);
imcb = im2(:,:,2) ;
b1 = imcb > 110;
b1=1-b1;
b2 = imfill(b1,"holes");
figure,imshow(im1);
b3=bwareaopen(b2,200);

[lab,num] = bwlabel(b3);
blobs = regionprops(lab);
num
for con=1:num
rectangle("position",blobs(con).BoundingBox,"EdgeColor","b");
endfor

