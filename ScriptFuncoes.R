#Matrizes Sim?tricas
#Posso fazer o c?lculo do SI e do SU tornando matrizes triangulares.
#E tranform?-la como sim?trica depois, usando forceSymmetric().
#Ser? que tem menos gasto computacionalmente?
#class "dsyMatrix"

#construtor oculto para o usuario
pre_FC = setRefClass("FC",fields = list(
  MU="matrix",
  medias_u = "numeric",
  medias_i = "numeric",  
  SU="matrix",
  SI="matrix"))

#Rascunho Fun??es:

#construtor visivel para o usuario
#funcao que recebe uma matriz MU e retorna um objeto do tipo FC com as 3 matrizes preenchidas.
FC = function(MU){
  obj_FC = pre_FC(MU=MU)
  #Padronizar MU
  #vetor com as m?dias de cada linhas apenas com avalia??es dadas
  #Cria vetores de medias, para linhas e colunas:
  medias_u=NULL
  for(i in 1:dim(MU)[1]){
    medias_u[i] = mean(MU[i,],na.rm = T)
  }
  medias_i=NULL
  for(j in 1:dim(MU)[2]){
    medias_u[j] = mean(MU[,j],na.rm = T)
  } 
  #Criar SU:
  SU=matrix(0,dim(obj_FC$MU)[1],dim(obj_FC$MU)[1])
  for(i in 1:dim(MU)[1]){
    for(j in i:dim(MU)[1]){
      SU[i,j]<-sum((MU[i,]-medias_u[i])*(MU[j,]-medias_u[j]),na.rm = T)/(sqrt(sum((MU[i,]-medias_u[i])^2,na.rm = T))*sqrt(sum((MU[j,]-medias_u[j])^2,na.rm = T)))
    }
  }
  obj_FC$SU=SU
  #Criar SI
  SI=matrix(0,dim(obj_FC$MU)[2],dim(obj_FC$MU)[2])
  for(i in 1:dim(obj_FC$MU)[2]){
    for(j in i:dim(obj_FC$MU)[2]){
      SI[i,j]=(prodint(obj_FC$MU[,i],obj_FC$MU[,j]))/(raizsquad(obj_FC$MU[,i])*raizsquad(obj_FC$MU[,j]))
    }
  }
  obj_FC$SI=SI  
  #alocar a matriz SU e SI do obj_FC
  #pensar em criar DI e DU de forma esperta. lembrar da padronizacao. 
  #existe uma classe de matrizes diagonal?
  
  return(obj_FC)
}
m=matrix(sample(c(NA,1,2,3,4,5),100000,replace=T), 100,100)
t=FC(m)
t
adicionarusuario<-function(FC,j,n){
  #ele ta adicionando sem estar padronizado
  nlim=dim(FC$MU)[1]
  FC$MU=rbind(FC$MU,0)
  FC$MU[nlim+1,j]=n

  #Altera??o SU
  FC$SU=rbind(FC$SU,0)
  FC$SU=cbind(FC$SU,0)
  k=dim(FC$SU)[1]
  for(i in 1:k){
    FC$SU[i,k]=(prodint(FC$MU[i,],FC$MU[k,]))/(raizsquad(FC$MU[i,])*raizsquad(FC$MU[k,]))
  }
  
  #Altera??o SI
  SI=matrix(0,dim(FC$MU)[2],dim(FC$MU)[2])
  for(i in 1:dim(FC$MU)[2]){
    for(j in i:dim(FC$MU)[2]){
      SI[i,j]=(prodint(FC$MU[,i],FC$MU[,j]))/(raizsquad(FC$MU[,i])*raizsquad(FC$MU[,j]))
    }
  }
  FC$SI=SI 
return(FC)
}
t
adicionarusuario(t,4,5)
m=rbind(m,0)
m=cbind(m,0)
t
View(t$SU)
