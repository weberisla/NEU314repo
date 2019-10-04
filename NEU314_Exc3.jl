# NEU 314 Excercises 3
## Isla Weber

Pkg.add("PyCall")
Pkg.build("PyCall")
using PyCall
Pkg.add("PyPlot")
Pkg.build("PyPlot")
using PyPlot
using JLD
using Images

# 1. Version control and image manipulation
# A.
## a.

cd("/Users/islaweber/Documents/NEU314")
imread("el-capitan.png")
image = imread("el-capitan.png")
imshow(image)
size(image)

## b. c. d.

"""
color_channels(filename)

Extracts red, blue, and green channels of an image file and returns them
as a vector containing the three channel matrices.

Args:
   filename (image file): The name of the image file to read.

Returns:
   image_channels (vector): a vector containing the image data for the
   red (R), green (G), and blue (B) channels.

   image_channels has the shape (R, G, B), where R, G, and B are each
   matrices with the same number of columns and rows as the pixels in
   the image file.
"""
function color_channels(filename)
    image = imread(filename)
    # break image down into red, green, and blue channels:
    R = image[:,:,1]
    G = image[:,:,2]
    B = image[:,:,3]
    # compile channels into one variable as a vector:
    image_channels = (R, G, B)
    println("Reset with git reset --mixed")
    return image_channels
end

color_channels("el-capitan.png")

## e.
image2 = zeros(360, 640, 3)
image2[:,:,1]=image[:,:,2]
image2[:,:,2]=image[:,:,3]
image2[:,:,3]=image[:,:,1]

subplot(1,2,1)
imshow(image)
title("El Capitan")
axis("off")

subplot(1,2,2)
imshow(image2)
title("El Capitan - Color Shift")
axis("off")

## f.

# B.
"""
shift_red(image, pixels)

Extracts the red channel of an image file and performs a circular rotation,
moving the red channel up the given number of rows.

Args:
   image (image file): The name of the image file to read.
   pixels (integer): the number of rows the channel will be shifted up.

Returns:
    This function returns a matrix containing the rotated red channel.
"""
function shift_red(image, pixels)
    R = imread(image)[:,:,1] # create a variable of the red channel matrix
    circshift(R, pixels)
end

subplot(1,2,1)
imshow(imread("el-capitan.png")[:,:,1])
title("Red Channel")
axis("off")

subplot(1,2,2)
imshow(shift_red("el-capitan.png", 180))
title("Rotated Red Channel")
axis("off")
