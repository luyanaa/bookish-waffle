load('x_true_AtmosphericBlur10.mat');

o = oblur(16);
m = mblur(16);

figure;
subplot(2,2,1);
imshow(f_true);
subplot(2,2,2);
imshow(o*f_true);
subplot(2,2,3);
imshow(m*f_true);

[B,Ac,Ar,X] = challenge1(256,256,0.1);
figure;
subplot(2,2,1);
imshow(X);
subplot(2,2,2);
imshow(B);
subplot(2,2,3);
imshow(pinv(Ac)*B);

revX = zeros(256, 256);
[U,S,V] = svd(Ac);
S = diag(S);
for i=1:30
    revX = revX+V(:,i)*U(:,i)'/S(i);
end
subplot(2,2,4);
imshow(revX*B);