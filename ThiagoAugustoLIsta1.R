#Lista Semana 1
#1)
x=0
y=-1
z=3/2
#a)
a = x + y + z
b = y*z
c = z/y
#b)
z^2
z^3
z^x
z^y
#c)
sqrt(a)
sqrt(x)
sqrt(y)
#d)
-(abs(b))^(1/3)
(-1/c)^(1/4)
(z)^(2/3)
#e)
abs(x)
abs(y)
abs(z)
#f)
exp(x)
exp(y)
exp(c)
#g)
log(x)
log(a)
log(b)
#h)
sqrt(pi)
exp(-pi)

#2)
ch1="a"
ch2="b"
ch3="c"

#a)
ch4=paste(ch1,ch2,ch3,sep=".")
#b)
ch5=paste(ch1,ch2,ch3,sep="")
#c)
ch4==ch5
#d)
ch4!=ch5

#3)
#a)
18%%5
-5%%2
15%%5
8.3%%3
#b)
a=21
if (a%%2==0){
  cat("O número é par")
}else{
  cat("O número é ímpar")
}

#c)
b=21
if (b%%1==0){
  cat("O número é inteiro")
}else{
  cat("O número é racional")
}
# Podemos utilizar também o comando %/%
#d)
c=-1
if(c%%1==0 && c>0){
  cat("É um número natural")
}else{
  cat("Não é número natural")
}

#4)
a<-seq(1:10)
b<-seq(1,20,by=2)
c<-seq(20,1,by=-2)
x=b-c
y=2*a
a==b
c>b

#5)
letters
LETTERS
class(letters)
class(LETTERS)
length(letters)
a<-c(LETTERS,letters)
b<-paste(LETTERS,letters)
class(a)
class(b)
#6)
matrix(c(1,2,3,4,101,102,103,104),nrow=4,ncol=2)
matrix(c(1,2,3,4,101,102,103,104),nrow=2,ncol=4,byrow=TRUE)
matrix(c(0,0,0,0,0,0),nrow=3,ncol=2)
matrix(c(1,1,1,1,1,1,1,1,1),nrow=3,ncol=3)

#7)
A<-matrix(c(1,2,3,4,5,6,7,8,9,10,11,12),4,3)
dim(A)

#8)
minha_lista=list("Thiago",20,c(86,1.75),c(FALSE,TRUE,FALSE))
