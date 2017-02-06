guess=function(){
  i=0
  j=100
  m=50
  counter=1
  cat("pls guess")
  condition=as.integer(readline(prompt=paste("is your guess:",m,"?")))
  while(condition!=1){
    counter=counter+1
    if(condition==0){
      i=m+1
    }else if(condition==2){
      j=m-1
    }
    m=(i+j)%/%2
    condition=as.integer(readline(prompt=paste("is your guess:",m,"?")))
  }
  
  cat("It took",counter,"times to guess your number.")
}