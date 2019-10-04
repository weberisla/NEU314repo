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

## b. c. d.
function color_channels(image)
    R = image[:,:,1]
    G = image[:,:,2]
    B = image[:,:,3]
    println("Reset with git reset --mixed")
    return R, G, B
end

## e.
image2 = zeros(360, 640, 3)
image2[:,:,1]=image[:,:,2]
image2[:,:,2]=image[:,:,3]
image2[:,:,3]=image[:,:,1]

subplot(1,2,1)
imshow(image2)
title("Normal")
axis("off")

## f.

# B.
function shift_(image)
    imshow(circshift(image, pixels))
end
