LOOCV <- function(interaction,a=0.5,b=0.9,color="red"){
  interaction = as.matrix(interaction)
  interaction_ori = interaction
  score_ori = NTSMDA(interaction,a,b)
  index = which(1==interaction)
  for(i in 1:length(index)){
    interaction[index[i]] = 0
    score = NTSMDA(interaction,a,b)
    score_ori[index[i]] = score[index[i]]
    interaction = interaction_ori
  }
  predictions = as.numeric(matrix(score_ori))
  labels = as.numeric(matrix(interaction_ori))
  library("pROC")
  roc(labels,predictions,plot=TRUE,print.auc=TRUE,col=color)
}
