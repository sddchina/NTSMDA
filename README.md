Our NTSMDA program mainly implements three functions (NTSMDA.R, LOOCV.R and Gaussian_kernel_Sim.R).

Functions:

NTSMDA (interaction, a, b): the function implements a NTSMDA algorithm.

interaction: an interaction profile matrix

a, b are two parameters in our algorithm, from 0 to 1.

 

LOOCV (interaction, a=0.5, b=0.9, color="red"): the function implements a leave-one-out cross-validation experiment.

interaction: an interaction profile matrix

a, b are two parameters in our algorithm, from 0 to 1. Default a= 0.5 and b = 0.9

color: the color of the ROC curve

 

Now we have uploaded a demo dataset (disease_miRNA_250_209.txt) in our Github page.

Using: interaction<-read.table(‘disease_miRNA_250_209.txt’)

a <-0.5

b <-0.9

score <- NTSMDA (interaction, a, b)

Package: NTSMDA
Type: Package
Title: Prediction of miRNA-disease associations by integrating network
    topological similarity
Version: 0.1
Date: 2015-12-28
Author: Dongdong Sun @HILAB
Maintainer: Dongdong Sun <sddchina@mail.ustc.edu.cn>
Description: This package is implemented NTSMDA algoritm.
Depends:
    R (>= 3.2.0)
Import: pROC
URL: 
License: Artistic-2.0
LazyData: TRUE
RoxygenNote: 5.0.1


