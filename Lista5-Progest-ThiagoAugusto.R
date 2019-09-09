#Lista5 - Programação Estatística
#1-
produtoescalar<-function(a,v){
  w=NULL
  for(i in 1:length(v)){
    w[i]=v[i]*a
  }
  return(w)
}
#2-
somavet<-function(vet1,vet2){
  if(length(vet1)!=length(vet2))
    stop("Ambos vetores precisam ter o mesmo tamanho")
  w=NULL
  for(i in 1:length(vet1)){
    w[i]=vet1[i]+vet2[i]
  }
  return(w)
}
#3-
difvet<-function(vet1,vet2){
  if(length(vet1)!=length(vet2))
    stop("Ambos vetores precisam ter o mesmo tamanho")
  w=NULL
  for(i in 1:length(vet1)){
    w[i]=vet1[i]-vet2[i]
  }
  return(w)
}
#4-
prodint<-function(vet1,vet2){
  if(length(vet1)!=length(vet2))
    stop("Ambos vetores precisam ter o mesmo tamanho")
  soma=0
  for(i in 1:length(vet1)){
    soma=soma + vet1[i]*vet2[i]
  }
  return(soma)
}
#5-
saoortogonais<-function(vet1,vet2){
  if(length(vet1)!=length(vet2))
    stop("Ambos vetores precisam ter o mesmo tamanho")
  if(prodint(vet1,vet2)!=0)
    return(F)
  else
    return(T)
}
#6
matrizescalar<-function(matriz,a){
  m=dim(matriz)[1]
  n=dim(matriz)[2]
  w=matrix(0,nrow=m,ncol=n)
  for(i in 1:m){
    for(j in 1:n){
      w[i,j]=a*matriz[i,j]
    }
  }
  return(w)
}
#7
somamat<-function(A,B){
  if(dim(A)[1]!=dim(B)[1] || dim(A)[2]!=dim(B)[2] )
    stop("As matrizes precisam ser da mesma dimensão")
  w=matrix(0,nrow=dim(A)[1],ncol=dim(A)[2])
  m=dim(A)[1]
  n=dim(A)[2]
  for(i in 1:m){
    for(j in 1:n){
      w[i,j]=A[i,j]+B[i,j]
    }
  }
  return(w)
}
#8
difmat<-function(A,B){
  if(dim(A)[1]!=dim(B)[1] || dim(A)[2]!=dim(B)[2] )
    stop("As matrizes precisam ser da mesma dimensão")
  w=matrix(0,nrow=dim(A)[1],ncol=dim(A)[2])
  m=dim(A)[1]
  n=dim(A)[2]
  for(i in 1:m){
    for(j in 1:n){
      w[i,j]=A[i,j]-B[i,j]
    }
  }
  return(w)
}
#9
transposta<-function(A){
  m=dim(A)[1]
  n=dim(A)[2]
  At=matrix(0,nrow=n,ncol=m)
  for (i in 1:n) {
    for(j in 1:m){
      At[i,j]=A[j,i]
      
    }
    
  }
  return(At)
}
#10
simetrica<-function(A){
  m=dim(A)[1]
  n=dim(A)[2]
  for(i in 1:m){
    for(j in 1:n){
      if(A[i,j]!=A[j,i])
        return(F)
    }
  }
  return(T)
}
A=matrix(c(5,8,8,1),nrow=2,ncol=2)
simetrica(A)
#11
prodvetmat<-function(v,A){
  if(dim(A)[2]!=length(v))
    stop("Dimensões não equivalentes")
  m=dim(A)[1]
  n=dim(A)[2]
  M=matrix(0,nrow=m,ncol=1)
  for(i in 1:m){
    M[i,1]=prodint(A[i,],v)
  }
  return(M)
}
#12
prodmatriz<-function(A,B){
  if(dim(A)[2]!=dim(B)[1])
    stop("O número de colunas de A é diferente do número de linhas de B")
  m=dim(A)[1]
  n=dim(B)[2]
  w=matrix(0,nrow=dim(A)[1],ncol=dim(B)[2])
  for(i in 1:m){
    for(j in 1:n){
      w[i,j]=prodint(A[i,],B[,j])
    }
  }
  return(w)
}
#13
a=4
b=-3
v1=c(2,-3,-1,5,0,-2)
v2=c(3,4,-1,0,1,1)
v3=c(1,2,3,4,5)
v4=c(0,1,1)
M1=matrix(c(1,-1,3,0,2,1),nrow=2,ncol=3)
M2=matrix(c(0,-1,1,-5,1,4,3,-1,0),nrow=3,ncol=3)
M3=matrix(c(3,-2,3,1,10,-1),nrow=3,ncol=2)
M4=matrix(c(1,0,1,1),nrow=2,ncol=2)
M5=matrix(c(3,1,0,1,1,1,3,2,0,3,-5,0,1,2,0,0),nrow=4,ncol=4)
#a)
produtoescalar(a,v3)
#b)
somavet(v1,v2)
#c)
difvet(v3,v1)
#d)
prodint(v1,v2)
#e)
prodint(produtoescalar(a,v1),difvet(v2,v1))
#f)
prodint(somavet(v1,v2),difvet(v1,v2))
#g)
saoortogonais(v1,v2)
#h)
matrizescalar(M1,b)
#i)
transposta(M1)
#j)
simetrica(M1)
simetrica(M4)
simetrica(M5)
#k)
prodvetmat(v4,M1)
#l)
somavet(transposta(prodvetmat(v4,M2)),v4)
#m)
prodmatriz(M1,M2)
#n)
prodmatriz(M2,M1)
#O)
prodmatriz(transposta(M3),M2)
#p)
somamat(prodmatriz(M1,M3),M4)
#q)
prodmatriz(prodmatriz(M1,M2),M3)
#r)
difmat(prodmatriz(prodmatriz(M1,M2),M3),M4)
