#Ejercicio1-----
contrasenia<-readline("Ingrese la contraseña: ")
repeat{
  confirmar<-readline("Ingrese la contraseña otra vez: ")
  if(contrasenia==confirmar){
    print("Contraseña correcta")
    break
  }
  print("Contraseña Incorrecta, ingresela otra vez")
}
#Ejercicio2----
rm(list = ls())
repeat{
  frase<-readline("Ingrese una frase: ")
  if(frase=="salir"){
    break
  }
  print(frase)
}
#Ejercicio3----
#Linea 28 elegir no es numerico
#Ejercicio4----

palabra<-readline("Ingrese una palabra: ")
letra<- readline("Ingrese una letra")
repeticiones<-0
for (i in 1:nchar(palabra)) {
  if(letra==strsplit(palabra,"")[[1]][i]){
    repeticiones<-repeticiones+1
  }
}
repeticiones

#Ejercicio5----
rm(list = ls())
numero<-as.numeric(readline("Ingrese un numero entero: "))
while(length(numero)!=1){
  print("Ingreso un numero NO entero")
  numero<-as.numeric(readline("Ingrese un numero entero: "))
}
print("Ingreso un numero entero")

if((numero%%numero)==0){
  if((numero%%2)==0 && (numero%%3)==0){
    cat(numero,"no es primo") 
  } else{
    cat(numero,"es primo")
  }
}else{
  cat(numero, "no es primo")
}

