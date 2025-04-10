% Read an image and convert it to double precision
A = im2double(imread('Audi.jpg'));

% Extract Red, Green, Blue channels
IR = A(:, :, 1);
IG = A(:, :, 2);
IB = A(:, :, 3);

% Apply custom transformation (likely sepia)
OR = IR * 0.393 + IG * 0.769 + IB * 0.189;
OG = IR * 0.349 + IG * 0.686 + IB * 0.168;
OB = IR * 0.272 + IG * 0.534 + IB * 0.131;

% Clip values greater than 1
OR = min(OR, 1);
OG = min(OG, 1);
OB = min(OB, 1);

% Concatenate output channels
A_out = cat(3, OR, OG, OB);

% Convert to uint8 format
A_out = uint8(255 * A_out);

% Show original and processed images
figure;
subplot(1, 2, 1), imshow(uint8(255 * A)), title('Original Image');
subplot(1, 2, 2), imshow(A_out), title('Processed Image');
