#Lista 10:
#2-
#a)
pol_exp<-function(x,n){
  aprox=1
  fat=1
  for (i in 1:n){
    fat=fat*i
    aprox=aprox+(x^i)/fat
  }
  return(aprox)
}
pol_exp(2,100)
exp(2)
#3
#a)
exp_f<-function(x,erro){
  aprox=1
  fat=1
  for(i in 1:10){
    fat=fat*i
    aprox=aprox+(x^i)/fat
  }
  repeat{
    i=i+1
    fat=fat*i
    parcela=(x^i)/fat
    if(abs(parcela)<erro)
      return(aprox+parcela)
    aprox=aprox+parcela
  }
 }
  
exp_f(2,0.00000001)
exp(2)

expf2<-function(x,erro){
  aprox=1
  fat=1
  for(i in 1:10){
    fat=fat*i
    aprox=aprox+(x^i)/fat
  }
  n=10
  repeat{
    i=i+1
    fat=fat*i
    parcela=(x^i)/fat
    if(abs(parcela)<erro)
      return(list(aprox+parcela,i))
    aprox=aprox+parcela
  }
}
expf2(2,0.000001)
ex_f3<-function(x,erro){
x=-(x^2)/2
aprox=1
fat=1
for(i in 1:10){
  fat=fat*i
  aprox=aprox+(x^i)/fat
}
repeat{
  i=i+1
  fat=fat*i
  parcela=(x^i)/fat
  if(abs(parcela)<erro)
    return(aprox+parcela)
  aprox=aprox+parcela
}}
ex_f3(2,0.0001)
#4
ln<-function(x,inc){
  if(x<=0)
    stop("X deve ser maior que 0")
  if(x>=2)
    return(-ln(1/x,inc))
  aprox=0
  for(i in 1:10){
    aprox=aprox+((-1)^(1+i))*((x-1)^i)/i
  }
  repeat{
    i=i+1
    parcela=((-1)^(1+i))*((x-1)^i)/i
    if(abs(parcela)<inc){
      return(aprox+parcela)
    }
    aprox=aprox+parcela
  }
}
ln(2,0.00001)
log(2)
