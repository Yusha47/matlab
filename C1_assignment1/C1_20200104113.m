
image = imread('yusha.jpg');


I = rgb2gray(image);


[row, col] = size(I);
flipped_image = zeros(row, col, 'uint8');
for i = 1:row
    for j = 1:col
        flipped_image(row - i + 1, j) = I(i, j);
    end
end


canvas_height = 2*row;
canvas_width = 2*col;
m = uint8(ones(canvas_height, canvas_width));


m(1:row, 1:col) = I;


m(1:row, col + 1:end) = flipped_image;


merged_image = [I; flipped_image];


imwrite(merged_image, 'combined_image.jpg');


subplot(2,2,1);
imshow(I);
text(471,1900,'Original Image','FontSize',8)


subplot(2,2,2);
imshow(flipped_image);
xlabel('');
ylabel('');


text(430,1900,'Flipped Image','FontSize',8)


subplot(2,2,3);
imshow(merged_image);
text(50,3700,'Merged Image','FontSize',8)

saveas(gcf, 'full_canvas.png');
