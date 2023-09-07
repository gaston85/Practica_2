##################################################################
# # Laboratorio de Procesamiento de Informacion Meteorologica/Oceanografica
# 
# 2do cuatrimestre 2023
##################################################################

# Clase_Arrays 1
#Elementos TODOS del mismo tipo con dimensiones

##############################################################################################

z<-numeric(1500)
dim(z) <- c(3,5,100) #Agrego dimensiones, se vuelve array


h<-numeric(24)
Z <- array(h, dim=c(3,4,2))
Z[,,1] #[Filas,Columnas,Tiempo]


#############################
m <- 21:40
dim(m)<-c(4,5) #Poe default la compu completa por columnas	
m 				
class(m) 	

dim(m)<-c(5,4) 	


m[3,4] 		
m[14]		


m[3,] 			
m[,2] 		

#############################

m1<-matrix(11:30,nrow=4,ncol=5,byrow=TRUE)
rownames(m1)<-c('rojo','azul','amarillo','verde') #Nombro a las filas
colnames(m1)<-c('a','b','c','d','e') #Nombro a la columnas
m1						
colnames(m1) 		
m1[,'b'] 
#############################
x<-c(1:6)
dim(x)<-c(2,3)
dimnames(x)<-list(c('Fila1','Fila2'),c('Col1','Col2','Col3'))
ejema<-matrix(1:12,ncol=3,byrow=T,
              dimnames=list(letters[1:4],LETTERS[1:3]))
ejema[1,1]
ejema[,c(2,3)] #Todas las filas de la columnas 2 y 3

ejema[,c(-1,-3)] #No me muestres las columnas 1 y 3
ejema[,c(-1,-3),drop=F]


#############################
m2<-cbind(c(2,3,4.5),c(5,6,7.5)) 
m2		
m3<-rbind(c(2,3,4.5),c(5,6,7.5))
m3		
#############################
x<-matrix(1:6,2,3) 
x[,2]
x[1,1:2]
x[3,] #Error, no hay tercera fila 
x[3]
ncol(x); nrow(x)
t(x)
cbind(1,x)
cbind(1:3,1:6)
apply(x,1,sum) #El 1 es filas, si pongo 2 es columnas
max(x); min(x)
dim(x)
length(x)
max(dim(x))

#############################
a=diag(3)
b=rnorm(9) 		
dim(b)=c(3,3) 		

require(abind)  #istalo/llamo al paquete
abind(a,b,along=3)->c #Concatena una matriz multidim.		
abind(a,b,along=1)->d #Concatena por filas   		
abind(a,b,along=2)->e #Concatena por columnas    		
##################################################

c<-matrix(c(2,1,5,6,3,8,4,9,2,7,3,5),nrow=3,ncol=4)
c[order(c[,1]),] #ordeno segun col 1	
c[order(c[,3]),]    		
c[order(c[,2],decreasing=TRUE),]
c
#################################################

diag(x) 		

l<-diag(5) 
s=diag(10,3,4) #Matriz 3x4 con 10 en a diagonal

x=c(2,3,4,5)
y=diag(x,4,4) 

#######################
x<-matrix(1:6,2,3)
apply(x,1,sum)
rowSums(x)