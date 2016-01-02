## calucate network topological similarity
Gaussian_kernel_Sim <- function (interaction){
  nd = dim(interaction)[1]
  gamad = 1
  pkd = matrix(0,nrow = nd,ncol = nd)
  for (i in 1:nd){
    for(j in 1:nd){
      pkd[i,j]=as.numeric(exp(-gamad*(sqrt(sum((interaction[i,]-interaction[j,])^2)))^2));
    }
  }
  return (pkd)
}
