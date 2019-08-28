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
#5)
criamatriz<-function(n){
  if(n<=0 || n%%1!=0)
    stop("Digite um número inteiro positivo")
  m=matrix(0,nrow=n,ncol=n,byrow=F)
  for(i in 1:n){
    for(j in 1:n){
      if(i%%2==0){
        m[i,j]=2
      }else{
        m[i,j]=1
      }
    }
    
  }
  return(m)
}
criamatriz(10)
criamatriz2<-function(n){
  if(n<=0 || n%%1!=0)
    stop("Digite um número inteiro positivo")
  m=matrix(0,nrow=n,ncol=n,byrow=F)
  for(i in 1:n){
    for(j in 1:n){
      if(i%%2==0){
        m[j,i]=2
      }else{
        m[j,i]=1
      }
    }
    
  }
  return(m)
}
criamatriz2(10)
criamatriz3<-function(n){
  if(n<=0 || n%%1!=0)
    stop("Digite um número inteiro positivo")
  m=matrix(0,nrow=n,ncol=n,byrow=F)
  for(i in 1:n){
        m[i,i]=i
        i=i+1
    }
  return(m)
}
criamatriz3(10)
#6
matrizdiag<-function(vet){
 n=length(vet)
 m=matrix(0,nrow=n,ncol=n,byrow=F)
 for (i in 1:n){
   m[i,i]=vet[i]
 }
 return(m)
}
matrizquadrada<-function(vet){
  n=length(vet)
  m=matrix(0,nrow=n,ncol=n,byrow=F)
  for (i in 1:n){
    for(j in 1:n){
       m[i,j]=vet[i]
    }
    }
  return(m)
}
matrizquadrada(c(1,1,1,1,3))
matrizquadrada2<-function(vet){
  n=length(vet)
  m=matrix(0,nrow=n,ncol=n,byrow=F)
  for (i in 1:n){
    for(j in 1:n){
      m[j,i]=vet[i]
    }
  }
  return(m)
}
#7
dezpa3<-function(x0){
  vet=x0
  for(i in 1:9){
    vet[i+1]=x0+3
    x0=x0+3
    
  } 
  return(vet)
}
dezpa<-function(x0,r){
  vet=x0
  for(i in 1:9){
    vet[i+1]=x0+r
    x0=x0+r
    
  } 
  return(vet)
}
dezpa(2,3)
dezpa2<-function(x0,r,n){
  vet=x0
  for(i in 1:n-1){
    vet[i+1]=x0+r
    x0=x0+r
    
  } 
  return(vet)
}
dezpa4<-function(x0,r,n,m){
  vet=x0
  soma=x0
  for(i in 1:m){
    vet[i+1]=x0+r
    x0=x0+r
    soma=soma+vet[i+1]
    
  } 
  return(soma)
}
#8)

fibo<-function(n){
  f <- c(1,1)
  for(i in 3: n){
    f[i] <- f[i - 1] + f[i-2]
  }
  return(f)
}  
fibo(5)
fibo2<-function(k){
  f <- c(1,1)
  i <- 3
  repeat{
    if(f[i-1] + f[i-2]>k){
      break
    }
    f[i] <- f[i-1] + f[i-2]
    i <- i+1
  }
  return(f)
}
fibo2(6)
fibo3<-function(k){
  f <- c(1,1)
  i <- 3
  repeat{
    if(f[i-1] + f[i-2]>k){
      break
    }
    f[i] <- f[i-1] + f[i-2]
    i <- i+1
  }
  return(i-1)
}
fibo3(6)
#9)

#10)
pg<-function(x0,q,n){
  p<-x0
  for(i in 2:n){
    p[i]=x0*q
    x0=x0*q
  }
  return(p)
}
pg(2,2,10)
pg2<-function(x0,q,m){
  p<-x0
  soma<-x0
  for(i in 2:m){
    p[i]=x0*q
    x0=x0*q
    soma=soma+p[i]
  }
  return(soma)
}
pg2(1/2,1/2,10)

pg2(1/2,1/2,30)

options(digits=22)
#Conclui-se que essa série converge para a=1.
