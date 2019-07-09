>> GirlIm =imread('girl.jpg');
GirlIm  =  rgb2gray(GirlIm);
%Aral��� [0-255] olarak belirliyoruz
bin=255;
%Histogram�n� buluyoruz
Value=reshape(GirlIm,[],1);

Value=double(Value);

Im=hist(Value,0:bin);
%Sonucu piksel say�s�na b�l�yoruz

Output=Im/numel(GirlIm);
%K�m�latif toplam� hesapl�yoruz
CSum=cumsum(Output);
%S = T (R) d�n���m�n� S ve R aral���nda [0 1] yap�yoruz.
HistIm=CSum(GirlIm+1);
%G�r�nt�y� uint8'ye d�n��t�r�yoruz

HistIm=uint8(HistIm*bin);
f  =  figure;
s1  =  subplot(2,2,1);
  imshow(GirlIm);
title('Original  Image');
s2  =  subplot(2,2,2);
  imhist(GirlIm);
title('Histogram');
s2  =  subplot(2,2,3);
  imshow(HistIm);
title('Histogram  equalization  of  original  Image');
s2  =  subplot(2,2,4);
  imhist(HistIm);
title('Histogram');

>> 