#Exercício lista 3
#1

fatoracao<-function(k){
  vet=NULL
  j=2
  if(k==1)
    return(1)
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
fatoracao(28864)
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
eprimo(201401)
nprimos<-function(n){
  vet=1
  c=0
  i=1
  while(c<n-1){
    if(eprimo(i)){
      vet=c(vet,i)
      c=c+1
    }
    i=i+1
  }
  return(vet)
}
nprimos(6)
