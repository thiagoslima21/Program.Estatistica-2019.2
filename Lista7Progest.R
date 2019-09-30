#Lista 7 - Programação Estatística
#1
soma1<-function(n){
  if(n==0)
    return(0)
  return(n+soma1(n-1))
}
soma1(4)
#2
fat<-function(n){
  if(n==0)
    return(1)
  return(n*fat(n-1))
}
soma2<-function(n){
  if(n==0)
    return(1)
  return((1/fat(n))+soma2(n-1))
}
soma2(9)
#3
soma3<-function(n){
  if(n==0)
    return(4)
  return((4*(-1)^n)/(2*n + 1)+soma3(n-1))
}
soma3(3120)
#4
fib<-function(n){
  if(n==1)
    return(1)
  if(n==2)
    return(1)
  return(fib(n-1)+fib(n-2))
}
somafib<-function(n){
  if(n==1)
    return(1)
  if(n==2)
    return(2)
  return(fib(n-1)+fib(n-2)+somafib(n-1))
}
#5
soma4<-function(n){
  if(n==0)
    return(1)
  return((1/(3^n))+soma4(n-1))
}
soma4(4)
somas<-function(a,b){
  if(a==b)
    return((1/(3^a)))
  return((1/(3^b))+somas(a,b-1))
}
somas(0,4)
#6
mult2<-function(n){
  if(n==0)
    return(1)
  return(2*mult2(n-1))
}
mult2(3)
#7
multx<-function(x,n){
  if(n==0)
    return(1)
  return(x*multx(x,n-1))
}
#8

#11
hanoi<-function(n,O="1",A="2",D="3"){
  if(n<=0)
    stop("n tem que ser um inteiro positivo")
  if(n==1){
    cat("Move de ",O," para ",D,". ")
    return("")
  }
  hanoi(n-1,O,D,A)
  cat("Move de ",O," para ",D,". ")
  hanoi(n-1,A,O,D)
}
hanoi(2)
hanoi<-function(n,O="1",A="2",D="3"){
  if(n<=0)
    stop("n tem que ser um inteiro positivo")
  if(n!=1){
    hanoi(n-1,O,D,A)
    cat("Move de ",O," para ",D,". ")
    hanoi(n-1,A,O,D)
  }else{
     if(n==1){
       cat("Move de ",O," para ",D,". ")
       
  }
  
  }
}
hanoi(1)
hanoi(2)
hanoi(3)
hanoi(4)
hanoi(5)
1,3,7,15,31
num_mov<-function(n){
  if(n==1)
    return(1)
  return(2*(num_mov(n-1))+1)
}
num_mov(2)
