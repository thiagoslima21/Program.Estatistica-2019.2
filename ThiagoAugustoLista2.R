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
for(j in 1:10){
  soma=0
  for(i in 1:length(L4[[j]])){
    soma=soma+L4[[j]][i]
  }
  z[i]=soma
}
z
#b)
v <- character()
for (i in 1:10) {
  soma = sum(l4[[i]])
  if(soma%%5==0){
    v[i] = paste(soma, "é múltiplo de 5")
  }else{
    v[i] = paste(soma, "não é múltiplo de 5")
  }
  
}
#c)
n=0
for (i in 1:10){
  if(z[i]%%5==0)
    n=n+1
}
n
#8)
t=2
x0=2
i=1
for(i in 1:99){
  t[i+1]=x0+3
  x0=x0+3
 
}  
#b)
soma=0
for(i in 1:35){
  soma=soma+t[i]
}
soma
#c)
n=0
for(i in 1:100){
  if(t[i]%%4==0)
    n=n+1
}
#d)
n=0
for(i in 1:100){
  if(t[i]%%4==0 && t[i]%%5==0)
    n=n+1
}
#e)
n=0
for(i in 1:100){
  if(t[i]%%4==0 || t[i]%%5==0)
    n=n+1
}
#f)
x=t
for(i in 1:100){
  if(x[i]%%2!=0)
    x[i]=0
}
#9)



#a

# primeira alternativa 
fibonacci = c(1,1)
for (i in 3:12) {
  fibonacci[i] = fibonacci[i-2]+fibonacci[i-1]
  
}
finonacci

# segunda alternativa 

fibonacci = NULL
for (i in 1:12) {
  if(i<=2){
    fibonacci[i] = 1
  }else{
    fibonacci[i] = finonacci[i-2]+finonacci[i-1]
  }
}

finonacci

# B

fibonacci = NULL
i = 1
repeat{
  if(i<=2){
    fibonacci[i]=1
  }else{
    if((fibonacci[i-2]+fibonacci[i-1])>=300){
      break
    }
    fibonacci[i] = fibonacci[i-2]+fibonacci[i-1]
  }

  i = i+1
}
fibonacci


# C

f1 = 1
f2 = 1
n = 2
c = 0
repeat{
  if(f1+f2>=1000){
    break
  }
  c = f1 + f2
  f1 = f2
  f2 = c
  n = n+1
}
n
