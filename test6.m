pkg load image;
img=imread("mat4.jpg");
figure, imshow(img);
img1= im2bw(img,0.55);
figure, imshow(img1);
img2=bwareaopen(img1,50);
img3=bwlabel(img2);
blobs=regionprops(img3);
blobs(11).BoundingBox;
figure, imshow(img3);
rectangle('position',blobs(11).BoundingBox,'EdgeColor','r');
img4=imcrop(img3,blobs(11).BoundingBox);
figure, imshow(img4);




