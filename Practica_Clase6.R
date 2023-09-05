#Ciclos----
#Funcion for----

#Ejecuta un ciclo una cantidad fija de veces.
# for(elemento in objeto) {
#  operacion con elemento
# }

x <-1:10
# Caso 1 :
for(i in x) {
  y<-i**2
  assign(paste( "y",i,sep= " "),y)
  rm(y)
}

rm(list = ls())
x<-numeric()
for (i in 1:10) {
  #x[i]<-i**2
  x<-c(x,i**2)
}

#While----

#Ejecuta un ciclo mientras sea verdadera una condicion.

# while(condicion){
# operaciones
# }
rm(list = ls())
umbral<-5
valor<-0

while(valor<umbral){
print("Todavianosehaalcanzadoelumbral.")
valor<-valor+1
}

#break y next----
#break permite interrumpir un ciclo, mientras que next deja avanzar a la
#siguiente iteracion del ciclo, saltandose la actual.

for(i in 1:5){
  if(i==2){
    break
  }
  print(i)
}

for(i in 1:5){
if(i==2){
next
}
print(i)
}
#Repeat----
#Ejecuta un ciclo indefinidamente (la unica forma de detener esta estructura es mediante el comando break).

#Ejercicio----
rm(list = ls())
temp_C<-c()
temp<-285
for (i in 1:30) {
  temp_C[i]<-temp-273
  temp<-temp+0.5
}

rm(list = ls())
temp_C<-c()
temp<-285
for (i in 1:30) {
  temp_C[i]<-temp-273
  if(temp_C[i]<30){
    print(paste("El dia",i,"y con una temperatura de",temp_C[i],"todavia no se supero el umbral de los 30°C"))
  }
  temp<-temp+0.5
}

rm(list = ls())
temp_C<-c()
temp<-285
dia<-1
while(dia<=30){
  temp_C[dia]<-temp-273
  temp<-temp+0.5
  dia<-dia+1
}
rm(list = ls())
temp_C<-c()
temp<-285
dia<-1
while(dia<=30){
  temp_C[dia]<-temp-273
  if(temp_C[dia]<30){
    print(paste("El dia",dia,"y con una temperatura de",temp_C[dia],"todavia no se supero el umbral de los 30°C"))
  }
  temp<-temp+0.5
  dia<-dia+1
}

rm(list = ls())
temp_C<-c()
temp<-285
dia<-1
repeat{
  temp_C[dia]<-temp-273
  print(paste("El dia",dia,"y con una temperatura de",temp_C[dia],"todavia no se supero el umbral de los 30°C"))
  temp<-temp+0.5
  dia<-dia+1
  if(dia>30){
    break
  }
}
