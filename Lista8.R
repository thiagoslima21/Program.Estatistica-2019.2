#Lista 8 Progest
#1 Defina n = tamanho do vetor v;
#2 Inicie j = 1;
#3 Inicie i = 1;
#4 Se vi < vi+1, troque a posição i com posição i + 1 no vetor v;
#5 Incremente i = i + 1
#6 Se i <= n -􀀀 j, volte para a linha 4;
#7 Incremente j = j + 1
#8 Se j <= n -􀀀 1 , volte para a linha 3;
#9 Retorne v.
#Questão 1
ordenabolha<-function(v){
  n=length(v)
  
  for(j in 1:(n-1)){
    for(i in 1:(n-j)){
      if(v[i]>v[i+1]){
        aux=v[i]
        v[i]=v[i+1]
        v[i+1]=aux
    }
  }
  }
  return(v)
}
ordenabolha(c(5,3,2,1))

#Ordena Rápido
ordenarapido<-function(v){
  n=length(v)
  if(n==1)
    return(v)
  #busca do i 
  i=2
  j=n
  repeat{
    if(i>n){#não achei o i,logo o pivo é o maior elem do vetor
      #trocas v[1] e v[n]
      aux=v[1]
      v[1]=v[n]
      v[n]=aux
      w=v[1:(n-1)]
      wo=ordenarapido(w)
      v0=c(wo,v[n])
      return(vo)
    }
    if(v[i]>v[1]){#achei o i
      #procurar o j
      repeat{
        if(v[j]<=v[1]){#achei j
          if(i<j){
            #troco v[i] com v[j]
            aux=v[i]
            v[i]=v[j]
            v[j]=aux
            break
          }else{
            #trocar v1 e vj usand o auxiliar
            aux= v[j]
            v[j]=v[1]
            v[1]=aux
            #chamada recursiva
            if(j>1){
              we=v[1:(j-1)]
              weo=ordenarapido(we)
              wd=v[(j+1):n]
              wdo=ordenarapido(wd)
              vo=c(weo,v[j],wdo)
            }else{#j=1
              wd=v[(j+1):n]
              wdo = ordenarapido(wd)
              vo = c(v[j],wdo)
              }
            return(vo)
            }
        }
        j=j-1
      }
    }
    i=i+1
  }
}
ordenarapido(c(3,2,1,6,4,7))
