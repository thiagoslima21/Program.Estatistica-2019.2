#Lista 2 - Programação Estatística

#1)

a=1
b=3
c=4
if(a==b && b==c){
  cat("Equilátero")
}else{
  if(a!=b && a!=c && b!=c){
    cat("Escaleno")
  }else{
    cat("Isósceles")
  }
}

#2)

#a)
vet=NULL
for (i in 1:100){
  vet[i]=3*i
}
vet

#b)
vet2=NULL
i=1
repeat{
 if(3*i>=100)
   break
  vet2[i]=3*i
  i=i+1
}
vet2

#c)
vet3=NULL
i=0
while(i<100){
  vet3[i+1]=2*i+1
  i=i+1
}
vet3

#3)
#a)
m1=matrix(0,nrow=10, ncol=10)
for(i in 1:10){
  m1[1,i]=1
}
m1

#b)
m2=matrix(0,nrow=10, ncol=10)
for(i in 1:10){
  for (j in 1:10){
    m2[i,j]=i
  }
}
m2
#c)
m3=matrix(0,nrow=100, ncol=100)
for(i in 1:100){
  for (j in 1:100){
    m3[i,j]=j
  }
}
m3
#d)
m4=matrix(0,nrow=100, ncol=100)
for(i in 1:100){
  for (j in 1:100){
    if(i%%2==0)
    m4[i,j]=2
    else
      m4[i,j]=1
  }
}
m4
#4)
#a)
m5=matrix(0,nrow=100, ncol=100)
for(i in 1:100 ){
  m5[i,i]=i
}
m5
#b)
m6=matrix(0,nrow=100, ncol=100)
for(i in 1:100){
  m6[i,i]=100-i+1
}
m6
#5)
#a)
L1=list()
for (i in 1:10){
  L1[[i]]=i
} 
L1
#b)
L2=list()
vet1=NULL
for (i in 1:10){
  for(j in 1:10){
    vet1[i]=1
    L2[[i]]=vet1
  }  
}
L2
#c)
L3=list()
for (i in 1:10){
  L3[[i]]=0
  for(j in 1:10){
    L3[[i]][j]=i*j
  }
}
L3
#d)
L4=list()
for(i in 1:10){
  L4[[i]]=0
  for(j in 1:i){
    L4[[i]][j]=2*j
  }
}
L4
#E)
L5=list()
for(i in 1:10){
  L5[[i]]=0
  m=matrix(0,ncol=i,nrow=i)
  for(j in 1:i){
    m[j,j]=1
    L5[[i]]=m  
    }
}
L5
#6)
#A)
soma=0
for(i in 1:10){
  soma=soma+L1[[i]]
}
soma
#B)
soma2=0
for(i in 1:10){
  for (j in 1:length(L3[[i]])){
    soma2=soma2+L3[[i]][j]
  }
}
soma2

#7)
#a)
z=NULL
for(i in 1:10){
  
}
