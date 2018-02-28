%save('dataset','features','targets');
a = imread('E:\Work\Matlab\dataset\124.jpg');
I = a(:,:,2);
se = strel('disk',24);
tophat = imtophat(I,se);
bothat = imbothat(I,se);
topbot = imsubtract(bothat,tophat);
contrastAdjusted = imadjust(topbot);
figure(1)
imshow(contrastAdjusted);
glcm = graycomatrix(contrastAdjusted,'Offset',[2 0]);
stats = graycoprops(glcm,{'contrast','correlation','energy','homogeneity'})
