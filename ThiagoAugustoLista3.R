#Lista 3 - Program Estat 
#1)
#a)
menor<-function(a,b){
  if(a<b){
    return(a)
  }
  return(b)
}
#b)
menor_3<-function(a,b,c){
  if(a<b && a<c){
    return(a)
  }else{
    if(b<c)
      return(b)
  }
  return(c)
  
}
#2
triangulo<-function(a,b,c){
  if(a<=0 || b<=0 || c<=0){
    stop("Digite medidas positivas")
  }
  if(a>b+c || b>a+c || c>a+b){
    stop("Os dados digitados não formam um triângulo")
  }
  if(a==b && b==c){
    cat("Equilátero")
  }else{
    if(a!=b && a!=c && b!=c){
      cat("Escaleno")
    }else{
      cat("Isósceles")
    }
  }
}
#3
Cont<-function(vet){
  n=length(vet)
  c=0
  for(i in 1:n){
    if(vet[i]>=0){
      c=c+1
    }
  }
  return(c)
  }
    
v = c(1.0,3.2,???2.1,10.6,0.0,???1.7,???0.5)
Cont(v)

menoresq<-function(a,vet){
  n=length(vet)
  c=0
  for(i in 1:n){
    if(vet[i]<a)
      c=c+1
  }
  return(c)
}
  `
#4)
nmultiplosdem<-function(n,m){
  vet=NULL
  for(i in 1:n){
    vet[i]=m*i
  }
  return(vet)
}

#b)
nmultmenork<-function(m,k){
  vet=NULL
  i=1
  while(m*i<k){
    vet[i]=m*i
    i=i+1
  }
  return(vet)
}
nmultmenork(2,100)
#c)
cnmultmenork<-function(m,k){
  vet=NULL
  i=1
  c=0
  repeat{
    if(m*i>=k)
      break
    if(m*i<k)
      c=c+1
    i=i+1
  }
  return(c)
}
cnmultmenork(4,17)
