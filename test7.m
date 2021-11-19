img = imread("mat4.jpg");
imgg = rgb2gray(img);
b1 = im2bw(imgg,145/255);
b2 = imfill(b1,"holes"); 
b3 = bwareaopen(b2,10000); 

 [Lab,n] = bwlabel(b3);
bls = regionprops(Lab)
bb = bls.BoundingBox
fin = imcrop(img,bb);


i1=rgb2gray(fin);
i2=bwlabel(i1);
i2=label2rgb(i2);
i3=im2bw(i1,145/255);
i3=1-i3;
i4=bwlabel(i3);
i5=label2rgb(i4);
figure, imshow(i5);


img1= im2bw(fin,0.55);
img1=1-img1
img2=bwareaopen(img1,50);
img3=bwlabel(img2);
blobs=regionprops(img3);
blobs(5).BoundingBox;
rectangle('position',blobs(5).BoundingBox,'EdgeColor','r');
img4=imcrop(fin,blobs(5).BoundingBox);
figure, imshow(img4);

