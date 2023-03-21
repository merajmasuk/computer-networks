clear all
close all
e = 3; n = 33; d = 7; N=256;
I=imread('peppers.png');
I=rgb2gray(I);
I=imresize(I,[N, N]);
subplot(2,2,1)
imshow(I)
title('Original Image')

I=double(I);
R=mod(I,16);
%Remainder of the image
for i=1:N
for j=1:N
Q(i,j)=uint8((I(i,j)/16)-0.5);
% Quiescent of the image
end
end

Q=double(Q);
for i =1:N
for j = 1:N
Qe(i, j)=mod(Q(i,j)^e, n);
Re(i, j)=mod(R(i,j)^e, n);
%Decryption of image
Qd(i, j)=mod((Qe(i,j))^d, n);
Rd(i, j)=mod((Re(i,j))^d, n);
end
end

Rec=Qd*16+Rd;
subplot(2,2,2)
imshow(uint8(Qe))
title('Encrypted Quiescent Image')
subplot(2,2,3)
imshow(uint8(Re))
title('Encrypted Remainder Image')
subplot(2,2,4)
imshow(uint8(Rec))
title('Decrypted Image')

I=imread('peppers.png');
I1=I(:,:,1); %red plate
I2=I(:,:,2); %green plate
I3=I(:,:,3); %blue plate
subplot(2,2,1
)
imshow(I1)
title('Red plate')
subplot(2,2,2
)
imshow(I2)
title
('Green plate')
subplot(2,2,3
)
imshow(I3)
title('Blue plate')
Y=cat(3,I1,I2,I3);
subplot(2,2,4
)
imshow(Y)
title('RGB image')

