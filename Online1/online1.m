% Read the image
img = imread('turkey.jpg'); % Replace 'your_image.jpg' with the path to your image file

% Get the dimensions of the image
[rows, cols, ~] = size(img);

% Define a threshold for what is considered "white"
whiteThreshold = 200; % Adjust this value as needed
redThreshold = 150;
% Define the RGB value for yellow
yellow = [255, 255, 0];
black = [0, 0, 0];
% Loop through each pixel
for i = 1:rows
    for j = 1:cols
        % Check if the pixel is close to white
        if all(img(i, j, :) > whiteThreshold)
            % If close to white, set the pixel to yellow
            img(i, j, :) = yellow;
        else img(i, j, :) = black;
        end
    end
end

% Display the modified image
imshow(img);
