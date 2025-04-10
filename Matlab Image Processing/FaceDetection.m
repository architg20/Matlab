%Read the image
A=imread('Face.jpg');

%Get FaceDetector Object
FaceDetector = vision.CascadeObjectDetector();

%Use FaceDetector on A and get the faces
BBOX = step(FaceDetector,A);

%Annotate these faces on the top of the image
B = insertObjectAnnotation(A, 'rectangle', BBOX, 'Face');
imshow(B), title('Detected Face');

%Display the number of faces in a string
n=size(BBOX,1);
str_n = num2str(n);
str = strcat('Number of detected faces are',str_n);
disp(str);