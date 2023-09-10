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
rm(list = ls())
salarioanual<-as.numeric(readline("Ingrese el salario del empleado: "))
if(salarioanual<6000){
  print("No paga impuestos")
}else if(salarioanual>=6000 &salarioanual<20000){
  impuesto<-0.17*(salarioanual-6000)
  cat("Paga",paste(impuesto,"u$s",sep = ""),"de impuestos")
}else if(salarioanual>=20000 &salarioanual<50000){
  impuesto<-2380+0.3*(salarioanual-20000)
  cat("Paga",paste(impuesto,"u$s",sep = ""),"de impuestos")
}else if(salarioanual>=50000 &salarioanual<60000){
  impuesto<-11380+0.42*(salarioanual-50000)
  cat("Paga",paste(impuesto,"u$s",sep = ""),"de impuestos")
}else{
  impuesto<-15580+0.47*(salarioanual-60000)
  cat("Paga",paste(impuesto,"u$s",sep = ""),"de impuestos")
}


#Ejercicio 7----
rm(list = ls())

dia <-as.numeric(readline("Ingrese el dia: "))
mes <-as.numeric(readline("Ingrese el mes: "))
anio<-as.numeric(readline("Ingrese el año: "))

#Miro en el mes que ingreso, los ultimos dias
if(mes==1){
  if(dia>31){
    cat("Ingreso una fecha inexistente: ",dia,"de Enero")
  }else if(dia==31){
    dia<-1
    mes<-"Febrero"
  }else{
    dia<-dia+1
    mes<-"Enero"
  }
}else if(mes==2){
  if(anio%%100 ==0){ #modificado para que mire año bisiestos
    if(dia>28){
      cat("Ingreso una fecha inexistente: ",dia,"de Febrero")
    }else if(dia==28){
      dia<-1
      mes<-"Marzo"
      cat("El resultado es: día",dia,"de",mes,"de",anio)
    }else{
      dia<-dia+1
      mes<-"Febrero"
      cat("El resultado es: día",dia,"de",mes,"de",anio)
    }
  }else if (anio%%4==0 | anio%%400==0){
    if(dia>29){
      cat("Ingreso una fecha inexistente: ",dia,"de Febrero")
    }else if(dia==29){
      dia<-1
      mes<-"Marzo"
      cat("El resultado es: día",dia,"de",mes,"de",anio)
    }else{
      dia<-dia+1
      mes<-"Febrero"
      cat("El resultado es: día",dia,"de",mes,"de",anio)
    } 
  }
}else if(mes==3){
  if(dia>31){
    cat("Ingreso una fecha inexistente: ",dia,"de Marzo")
  }else if(dia==31){
    dia<-1
    mes<-"Abril"
  }else{
    dia<-dia+1
    mes<-"Marzo"
    cat("El resultado es: día",dia,"de",mes,"de",anio)
  }
}else if(mes==4){
  if(dia>30){
    cat("Ingreso una fecha inexistente:",dia,"de Abril")
  }else if(dia==30){
    dia<-1
    mes<-"Mayo"
  }else{
    dia<-dia+1
    mes<-"Abril"
    cat("El resultado es: día",dia,"de",mes,"de",anio)
  }
}else if(mes==5){
  if(dia>31){
    cat("Ingreso una fecha inexistente: ",dia,"de Mayo")
  }else if(dia==31){
    dia<-1
    mes<-"Junio"
  }else{
    dia<-dia+1
    mes<-"Mayo"
    cat("El resultado es: día",dia,"de",mes,"de",anio)
  }
}else if(mes==6){
  if(dia>30){
    cat("Ingreso una fecha inexistente: ",dia,"de Junio")
  }else if(dia==30){
    dia<-1
    mes<-"Julio"
  }else{
    dia<-dia+1
    mes<-"Junio"
    cat("El resultado es: día",dia,"de",mes,"de",anio)
  }
}else if(mes==7){
  if(dia>31){
    cat("Ingreso una fecha inexistente: ",dia,"de Julio")
  }else if(dia==31){
    dia<-1
    mes<-"Agosto"
  }else{
    dia<-dia+1
    mes<-"Julio"
    cat("El resultado es: día",dia,"de",mes,"de",anio)
  }
}else if(mes==8){
  if(dia>31){
    cat("Ingreso una fecha inexistente: ",dia,"de Agosto")
  }else if(dia==31){
    dia<-1
    mes<-"Septiembre"
  }else{
    dia<-dia+1
    mes<-"Agosto"
    cat("El resultado es: día",dia,"de",mes,"de",anio)
  }
}else if(mes==9){
  if(dia>30){
    cat("Ingreso una fecha inexistente: ",dia,"de Septiembre")
  }else if(dia==30){
    dia<-1
    mes<-"Octubre"
  }else{
    dia<-dia+1
    mes<-"Septiembre"
    cat("El resultado es: día",dia,"de",mes,"de",anio)
  }
}else if(mes==10){
  if(dia>31){
    cat("Ingreso una fecha inexistente: ",dia,"de Octubre")
  }else if(dia==31){
    dia<-1
    mes<-"Noviembre"
  }else{
    dia<-dia+1
    mes<-"Octubre"
    cat("El resultado es: día",dia,"de",mes,"de",anio)
  }
}else if(mes==11){
  if(dia>30){
    cat("Ingreso una fecha inexistente: ",dia,"de Noviembre")
  }else if(dia==30){
    dia<-1
    mes<-"Diciembre"
  }else{
    dia<-dia+1
    mes<-"Noviembre"
    cat("El resultado es: día",dia,"de",mes,"de",anio)
  }
}else if(mes==12){
  if(dia>31){
    cat("Ingreso una fecha inexistente: ",dia,"de Diciembre")
  }else if(dia==31){
    dia<-1
    mes<-"Enero"
    anio<-anio+1
  }else{
    dia<-dia+1
    mes<-"Diciembre"
    cat("El resultado es: día",dia,"de",mes,"de",anio)
  }
}else{
  cat("Ingreso un mes erroneo",mes)
}
#Ejercicio 8----
rm(list = ls())
numeros<-seq(1,by=1,length.out=10)
cuadrado <- c( )
for (i in numeros) {
  cuadrado[i]<-i**2
}
#b
rm(list = ls())
numeros<-seq(2,by=2,length.out=1000)
cuadrado <- c( )
for (i in 1:length(numeros)) {
  cuadrado[i]<-numeros[i]**2
}