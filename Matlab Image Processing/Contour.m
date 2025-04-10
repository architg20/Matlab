% Read an image
A = imread('Coins1.jpg');

% Convert to grayscale
A_gray = rgb2gray(A);

% Define the mask
mask = zeros(size(A_gray));
mask(10:end-10, 10:end-10) = 1;

% Apply Active Contour Model (snakes)
B = activecontour(A_gray, mask, 300);

% Display original grayscale image
subplot(1,2,1), imshow(A_gray), title('Grayscale');

% Display result of active contour
subplot(1,2,2), imshow(B), title('Active Contour Result');
