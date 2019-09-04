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
    if(vet[i]>maior){
      maior=vet[i]
      c=i
    }  
  }
  return(c)
}
posmaximo(c(2,2,7,4,6))
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
  for(i in 1:length(vet)){
    soma=soma+vet[i]
  }
  return(soma/length(vet))
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
freq(c(1,2,2,2,2,5,5,5,5,3,3,3,10))

freqrel<-function(vet){
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
  m[2,]=freq/sum(freq)
  return(m)
}

freqrel(c(1,2,2,2,2,5,5,5,5,3,3,3,10))
frequencia<-function(vet,rel){
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
  if(rel==TRUE)
    m[2,]=freq/sum(freq)
  else
    m[2,]=freq
  return(m)
}  
frequencia(c(1,2,2,2,3),rel=TRUE)

#7
moda=function(vet){
  m=frequencia(vet,rel=F)
  freq=m[2,]
  t=posmaximo(freq)
  return(m[1,t])
}
moda(c(1,5,5,5,3))
#8
AmplitTot<-function(Vet){
  max=maximo(vet)
  min=minimo(vet)
  d=max-min
  return(d)
}
#9
distInterq=function(vet){
  q=quartil(vet)
  d=q[3]-q[1]
  return(d)
  
}
#10
variancia<-function(vet){
  m=media(vet)
  n=length(vet)
  sq=0
  for(i in 1:n){
    sq=sq+(vet[i]-m)^2
  }
  return(sq/(n-1))
}
variancia(c(10,9,10))

#11
desviomedio<-function(vet){
  n=length(vet)
  m=media(vet)
  d=NULL
  for (i in 1:n){
    d[i]=abs(vet[i]-m)
  }
  dm=media(d)
  return(dm)
}
desviomedio(c(1,2,3))
#12
cov<-function(vet1,vet2){
  n=length(vet1)
  k=length(vet2)
  if(n!=k)
    stop("Os tamanhos dos vetores devem ser iguais")
  m1=media(vet1)
  m2=media(vet2)
  sq=0
  for(i in 1:n){
    sq=sq+(vet1[i]-m1)*(vet2[i]-m2)
  }
  cv=sq/(n-1)
  return(cv)
}
#Desafio
matrizcov<-function(M){
  n=dim(M)[1]
  A=matrix(0,ncol=n,nrow=n)
  for(i in 1:n){
    for(j in 1:n){
      A[i,j]=cov(M[i,],M[j,])
    }
  }
  return(A)
}
t=matrix(c(2,3,60,50,11,7,8,9,10),nrow=3,ncol=3)

matrizcov(t)
