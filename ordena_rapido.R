OrdenaRapido = function(v){
  
  n = length(v)
  
  if(n==1)
    return(v)
    
  #busca do i
  i=2
  j=n
  repeat{
    if(i > n){#nao achei i, logo o pivo eh o maior elem
      #trocar v[1] e v[n]
      aux  = v[1]
      v[1] = v[n]
      v[n] = aux
      w = v[1:(n-1)]
      wo = OrdenaRapido(w)
      vo = c(wo,v[n])
      return(vo)
    }
      
    if(v[i]>v[1]){#achei o i
      #procurar j
      repeat{
        if(v[j]<=v[1]){ #achei j
          if(i < j){
            #troco v[i] com v[j]
            aux  = v[i]
            v[i] = v[j]
            v[j] = aux
            break
          }else{
            #trocar v[1] e v[j]
            aux  = v[j]
            v[j] = v[1]
            v[1] = aux
            #chamada recursiva
            if(j>1){
              we = v[1:(j-1)]
              weo = OrdenaRapido(we)
              wd = v[(j+1):n]
              wdo = OrdenaRapido(wd)
              vo = c(weo,v[j],wdo)
            } else {#j=1
              wd = v[(j+1):n]
              wdo = OrdenaRapido(wd)
              vo = c(v[j],wdo)
            }
            return(vo)
          }
        }
        j = j - 1
      }
    }
    
    i = i + 1
  }
}

n = 10000
v = sample(x = 1:n,size = n,replace = F)
OrdenaRapido(v)
