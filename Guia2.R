#Ejercicio 1----
b=5;c=10
a <- (3 < 4)  #T
a <- (b <= c) #T
a <- (b == c) #F
a <- (b != c) #T
#Ejercicio 2----
a=F;b=F
a&b;a|b;a==b;a!=b;xor(a,b);a&(!b)
a=F;b=T
a&b;a|b;a==b;a!=b;xor(a,b);a&(!b)
a=T;b=T
a&b;a|b;a==b;a!=b;xor(a,b);a&(!b)
a=F;b=T
a&b;a|b;a==b;a!=b;xor(a,b);a&(!b)
#Ejercicio 3----
rm(list = ls())
x<-as.numeric(readline("Ingrese el valor de x: "))

if(x>0){
  resultado<-5+sqrt(1+3*(x**2))
  cat("El valor de Y es:",resultado)
}else if (x<0){
  resultado<-1-sqrt(1+5*(x**2))
  cat("El valor de Y es:",resultado)
}else{
 resultado<-0
 cat("El valor de Y es:",resultado)
}

#Ejercicio 4----
#a
#El error del codigo es que no hay un limite superior para la temperatura,
#por lo que si la persona tiene 40 grados, el codigo va a decir que tiene
#temperatura normal.

#b
dia<-readline("Ingrese el dia de hoy: ")

#Verifico si el dia es numero o palabra, si es un numero fuerzo la variable a serlo
if(nchar(dia)==1){
  dia<-as.numeric(dia)
  if(dia==1){
    print("El dia de hoy es Domingo.")
  }else if(dia==2){
    print("El dia de hoy es Lunes")
  }else if(dia==3){
    print("El dia de hoy es Martes")
  }else if(dia==4){
    print("El dia de hoy es Miercoles")
  }else if(dia==5){
    print("El dia de hoy es Jueves")
  }else if(dia==6){
    print("El dia de hoy es Viernes")
  }else if(dia==7){
    print("El dia de hoy es Martes")
  }else{
    print("Ingreso un dia erroneo")
  }
}else if(dia=="domingo"){
  print("El dia de hoy es 1")
}else if(dia=="lunes"){
  print("El dia de hoy es 2")
}else if(dia=="martes"){
  print("El dia de hoy es 3")
}else if(dia=="miercoles"){
  print("El dia de hoy es 4")
}else if(dia=="jueves"){
  print("El dia de hoy es 5")
}else if(dia=="viernes"){
  print("El dia de hoy es 6")
}else if(dia=="sabado"){
  print("El dia de hoy es 7")
}else{
  print("Ingreso un dia erroneo")
}

#Ejercicio 5----
rm(list = ls())
repeat{
  A<-as.numeric(readline("Ingrese un numero entero que sera dividido: "))
  B<-as.numeric(readline("Ingrese el numero entero que lo dividira: "))
  if(nchar(A/B)==1){
    cat(A, "es multiplo de",B)
    break
  }else{
    cat(A,"no es multiplo de",B)
    break
  }
}
#B
if(A%%B==0){
  cat(A, "es multiplo de",B)
}else{
  cat(A,"no es multiplo de",B)
}
#Ejercicio 6----

