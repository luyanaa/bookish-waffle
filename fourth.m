an% Task 1
src = imread("IMG_20190802_1002436.jpg");

Rchannel = src(:,:,1);
Gchannel = src(:,:,2);
Bchannel = src(:,:,3);

imwrite(Rchannel,"R.jpg");
imwrite(Gchannel,"G.jpg");
imwrite(Bchannel,"B.jpg");

% Task 2
% figure;
% imshow(src);
% figure;
% image(src);
% figure;
% imagesc(src);

% Task 3 
Rchannel = double(mat2gray(Rchannel));
Gchannel = double(mat2gray(Gchannel));
Bchannel = double(mat2gray(Bchannel));
[s_R,v_R,d_R]=svd(Rchannel);
[s_G,v_G,d_G]=svd(Gchannel);
[s_B,v_B,d_B]=svd(Bchannel);

hold on;
re_R=s_R(:,:)*v_R(:,1:1)*d_R(:,1:1)';
re_G=s_G(:,:)*v_G(:,1:1)*d_G(:,1:1)';
re_B=s_B(:,:)*v_B(:,1:1)*d_B(:,1:1)';
re(:,:,1)=re_R;
re(:,:,2)=re_G;
re(:,:,3)=re_B;
subplot(2,2,1);
imshow(mat2gray(re));


re_R=s_R(:,:)*v_R(:,1:5)*d_R(:,1:5)';
re_G=s_G(:,:)*v_G(:,1:5)*d_G(:,1:5)';
re_B=s_B(:,:)*v_B(:,1:5)*d_B(:,1:5)';
re(:,:,1)=re_R;
re(:,:,2)=re_G;
re(:,:,3)=re_B;
subplot(2,2,2);
imshow(mat2gray(re));


re_R=s_R(:,:)*v_R(:,1:10)*d_R(:,1:10)';
re_G=s_G(:,:)*v_G(:,1:10)*d_G(:,1:10)';
re_B=s_B(:,:)*v_B(:,1:10)*d_B(:,1:10)';
re(:,:,1)=re_R;
re(:,:,2)=re_G;
re(:,:,3)=re_B;
subplot(2,2,3);
imshow(mat2gray(re));


re_R=s_R(:,:)*v_R(:,1:20)*d_R(:,1:20)';
re_G=s_G(:,:)*v_G(:,1:20)*d_G(:,1:20)';
re_B=s_B(:,:)*v_B(:,1:20)*d_B(:,1:20)';
re(:,:,1)=re_R;
re(:,:,2)=re_G;
re(:,:,3)=re_B;
subplot(2,2,4);
imshow(mat2gray(re));

hold off;

% Task 4
figure;
hold on;
subplot(2,2,1);
plot(s_R);
subplot(2,2,2);
plot(s_G);
subplot(2,2,3);
plot(s_B);
hold off;

figure;
re_R=s_R(:,:)*v_R(:,1:160)*d_R(:,1:160)';
re_G=s_G(:,:)*v_G(:,1:160)*d_G(:,1:160)';
re_B=s_B(:,:)*v_B(:,1:160)*d_B(:,1:160)';
re(:,:,1)=re_R;
re(:,:,2)=re_G;
re(:,:,3)=re_B;
imshow(mat2gray(re));

% Task 5 
figure;
src = randn(200);
[s,v,d]=svd(src);
plot(s);
