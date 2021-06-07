image = imread("src.jpg");

deg = input("Please input the rotation angle");
rad = deg / 180 * pi;
R = [cos(rad), -sin(rad); sin(rad), cos(rad)];
R = R';

imSize = size(image);
h = imSize(1);
w = imSize(2);
ch = imSize(3);

c1 = [h;w]/2;
c2 = [floor(w*sin(rad)+h*cos(rad))+1; floor(w*cos(rad)+h*sin(rad))+1]/2;
result = uint8(ones(floor(w*sin(rad)+h*cos(rad))+1, floor(w*cos(rad)+h*sin(rad))+1, 3)*128);
for k = 1:ch
    for i = 1:floor(w*sin(rad)+h*cos(rad))+1
        for j = 1:floor(w*cos(rad)+h*sin(rad))+1
            p = [i; j];
            p = (R*(p-c2)+c1);
            pFloor=floor(p);
            dp=p-pFloor;
            if( p(1) >= 2 && p(1) <= h-1 && p(2) >= 2 && p(2) <= w-1 ) 
                result(i, j, k) = (1-dp(1))*(1-dp(2))*image(pFloor(1),pFloor(2),k)+ ...
                    dp(1)*(1-dp(2))*image(pFloor(1)+1,pFloor(2),k)+...
                    (1-dp(1))*dp(2)*image(pFloor(1),pFloor(2)+1,k)+...
                    dp(1)*dp(2)*image(pFloor(1)+1,pFloor(2)+1,k);
            end
        end
    end
end

figure;
subplot(2,1,1);
imshow(image);
subplot(2,1,2);
imshow(result);