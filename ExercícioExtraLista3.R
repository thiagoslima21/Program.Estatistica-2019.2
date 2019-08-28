#Exercício lista 3
#1

fatoracao<-function(k){
  vet=NULL
  j=2
  repeat{
    if(k==1)
      break
    while(k%%j==0){
      vet=c(vet,j)
      k=k/j
    }
    j=j+1
    
  }
  return(vet)
}
fatoracao(27898)
#2
#a)
eprimo<-function(n){
  c=0
  for(i in 1:n){
    if(n%%i==0)
      c=c+1
  }
  if(c==2){
    
    return(T)
  }else{
    
    return(F)
  }
}
nprimos<-function(n){
  vet=NULL
  for(i in 1:n){
    if(eprimo(i))
      vet=c(vet,i)
  }
  return(vet)
}
nprimos(6)
