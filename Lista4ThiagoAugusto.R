#Lista 4 -  Programação Estatística
#1-
maximo<-function(vet){
  maior=vet[1]
  for(i in 2:length(vet)){
    if(vet[i]>=maior)
      maior=vet[i]
  }
  return(maior)
}
posmaximo<-function(vet){
  maior=vet[1]
  for(i in 2:length(vet)){
    if(vet[i]>=maior)
      maior=vet[i]
      c=i
  }
  return(c)
}
posmaximo(c(2,2,2,4))
#2
minimo<-function(vet){
  minimo=vet[1]
  for(i in 2:length(vet)){
    if(vet[i]<=minimo)
      minimo=vet[i]
  }
  return(minimo)
}
posminimo<-function(vet){
  minimo=vet[1]
  for(i in 2:length(vet)){
    if(vet[i]<=minimo)
      minimo=vet[i]
    c=i
  }
  return(c)
}

#3
media<-function(vet){
  soma=0
  for(i in 1:length(n)){
    soma=soma+vet[i]
  }
  return(soma/length(n))
}

#4
mediana<-function(vet){
  vet=sort(vet)
  n=length(vet)
  if(n%%2==0)
    return((vet[n/2]+vet[(n/2)+1])/2)
  return(vet[(n+1)/2]) 
}
mediana(c(1,2,8,7,8))
#5
quartil<-function(vet){
  m=mediana(vet)
  n=length(vet)
  vet=sort(vet)
  if(n%%2!=0){
    k=((n+1)/2)-1
    s=((n+1)/2)+1
  }else{
    k=n/2
    s=(n/2) + 1
  }
  w=vet[1:k]
  u=vet[s:n]
  q1=mediana(w)
  q3=mediana(u)
  return(c(q1,m,q3))
}  
quartil(c(1,2,8,7,8))
quartil2<-function(vet){
  m=mediana(vet)
  n=length(vet)
  vet=sort(vet)
  if(n%%2!=0){
    k=((n+1)/2)
    s=((n+1)/2)
  }else{
    k=n/2
    s=(n/2)
  }
  w=vet[1:k]
  u=vet[s:n]
  q1=mediana(w)
  q3=mediana(u)
  return(c(q1,m,q3))
}  
quartil2(c(1,2,8,7,8))
#6)
pertence<-function(a,vet){
  if(is.null(vet)){
    return(F)
  }
  for(i in 1:length(vet)){
    if(vet[i]==a)
      return(T)
     
  }
  return(F)
}
  
freq<-function(vet){
  num=NULL
  freq=NULL
  for(j in 1:length(vet)){
    c=0
    if(!pertence(vet[j],num)){
      num=c(num,vet[j])
      for(i in 1:length(vet)){
        if(vet[j]==vet[i])
          c=c+1
      }
      freq=c(freq,c)
    }
  }
  n=length(num)
  m=matrix(0,nrow=2,ncol=n)
  m[1,]=num
  m[2,]=freq
  return(m)
}
freq(c(1,2,2,2,2))


