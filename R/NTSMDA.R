NTSMDA <- function(interaction,a,b){
  n = dim(interaction)[1]
  m = dim(interaction)[2]
  f = matrix(0,nrow = n,ncol = n)
  score = matrix(0,nrow = n,ncol = m)
  ## calculate network similarity
  mirna_network_sim = Gaussian_kernel_Sim(t(interaction))
  disease_network_sim = Gaussian_kernel_Sim(interaction)

  ##  calucated new matrixs
  SM = interaction%*%mirna_network_sim;
  SD = disease_network_sim%*%interaction;

  for (u in 1:n){
    f[u,] = a*rowSums(repmat(SM[u,],n,1)*SM/repmat(colSums(SM),n,1))+(1-a)*rowSums(repmat(SD[u,],n,1)*SD/repmat(colSums(SD),n,1))
    score[u,] = b*rowSums(repmat(f[u,],m,1)*t(SM)/repmat(t(rowSums(SM)),m,1))+(1-b)*rowSums(repmat(f[u,],m,1)*t(SD)/repmat(t(rowSums(SD)),m,1))
  }
  return (score)
}
repmat <- function(A,M=1,N=1) {
  A = t(matrix(A))
  A = matrix(rep(A,M),M,N*dim(A)[2],byrow = TRUE)
  return (A)
}
