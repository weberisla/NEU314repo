# NEU 314 Excercises 3
## Isla Weber


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

## b.
function color_channels(image)
    R = image[:,:,1]
    G = image[:,:,2]
    B = image[:,:,3]
    return R, G, B
end

## c.

## d.

## e.

## f.

# B.
