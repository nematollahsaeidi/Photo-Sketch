import numpy as np
import torch
import os
import cv2
from collections import OrderedDict
from torch.autograd import Variable
import util.util as util
from util.image_pool import ImagePool
from PIL import Image, ImageOps
import skimage.morphology
import skimage.io
import skimage.util
import matplotlib.pyplot as plt

img = skimage.io.imread('E:\EMAD-python\code\PhotoSketch-master\examples\im_paint_(9).jpg')
low_sigma = cv2.GaussianBlur(img, (3, 3), sigmaX=5, sigmaY=10)
high_sigma = cv2.GaussianBlur(img, (5, 5), sigmaX=5, sigmaY=10)
img = low_sigma - high_sigma
image_pil = Image.fromarray(img.astype(np.uint8))
image_pil.save('data/Exp/PhotoSketch/Results/aaa.jpg')

img = skimage.io.imread('data/Exp/PhotoSketch/Results/aaa.jpg')
img = skimage.util.invert(img)
img = img > 125
img = skimage.morphology.skeletonize(img)
img = img.astype(np.uint8)
img *= 255
img = cv2.bitwise_not(img)
image_pil = Image.fromarray(img.astype(np.uint8))
image_pil.save('data/Exp/PhotoSketch/Results/aaa.jpg')




