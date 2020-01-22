
//funcion opcion 1//
Funcion prom <- promedio (  )
	escribir "Ingresar primer valor"
	leer n1
	escribir "Ingresar segundo valor"
	leer n2
	escribir "Ingresar tercer valor"
	leer n3
	
	prom<-n1+n2+n3/3
Fin Funcion
//funcion opcion 2//
Funcion bñ <- baño (  )
	
	escribir "Ingrese un nombre: "
	leer nb
	escribir "Ingrese genero: "
	leer gn
	Si gn="mujer" o gn="femenino"  Entonces
		gen<-1
		escribir nb " Pase al baño de mujeres"
	SiNo
		si gn="hombre" o gn="masculino" Entonces
			escribir nb " Pase al baño de hombres"
			gen<-2
		FinSi
	Fin Si
Fin Funcion
//Funcion opcion 3//
Funcion pbñ <- pagobaño (  )
	f2<-baño()
	
	escribir "¿Desea usar los baños?"
	leer ub
	escribir "¿Desea usar las duchas?"
	leer ducha
	si ub= "si"y ducha="si" entonces
		escribir " Monto a pagar: $2750"
	SiNo
		si ducha= "si" y ub="no" entonces
			escribir "Monto a pagar: $2500"
		SiNo
			si ducha="no" y ub="si" entonces
				escribir "Monto a pagar: $250"
			FinSi
		FinSi
	FinSi
Fin Funcion
//funcion opcion4//
Funcion num <- escribirnumero ( n )
	Segun n Hacer
		1:
			escribir "UNO"
		2:
			escribir "DOS"
		3:
			ESCRIBIR "TRES"
		4: 
			ESCRIBIR "CUATRO"
		5: 
			ESCRIBIR "CINCO"
		6:
			ESCRIBIR "SEIS"
		7:
			ESCRIBIR "SIETE"
		8: 
			ESCRIBIR "OCHO"
		9:
			ESCRIBIR "NUEVE"
		10: 
			ESCRIBIR "DIEZ"
		De Otro Modo:
			ESCRIBIR "NUMERO INVALIDO"
	Fin Segun
Fin Funcion
//funcion opcion 5//
Funcion pr <- promedionumeros ( n )
			
	mientras n<>0 hacer	
			repetir
			escribir "Ingrese un numero"
			leer n
				si n<>0 Entonces
				cantn<-0
				suman<-0
		
				FinSi
				suman<-suman+n
				cantn<-cantn+1
			hasta que n=0
		
		pr<-suman/cantn
	fin mientras
	
	
	
Fin Funcion
//funcion opcion 6//
Funcion win <- ganaste (  )
	intentos<-0
	Repetir
		escribir "Escriba un nombre que empiece con J"
		leer nombre
		intentos<- intentos+1
	Hasta Que nombre="juan" o nombre="Juan" o nombre="JUAN"
	escribir "Ganaste!!!!!"
	escribir "Numero de intentos: " intentos
Fin Funcion
//funcion opcion 7//
Funcion nrep <- nombrerepetido (  )
	dimension n[10]
	dimension nr[2,10]
	
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		escribir"Ingrese nombre"
		leer nombre
		n[i]<-nombre
	Fin Para
	
	rep<-0
	para i<-1 hasta 2 con paso 1 hacer
		para j<-1 hasta 10 con paso 1 Hacer
			
			si n[i]=n[j]entonces
				
				nr[i,j]<-n[j]
				rep<-rep+1
			FinSi
			
		FinPara
		
	FinPara
	para i<-1 hasta 2 con paso 1 hacer
		para j<-1 hasta 10 con paso 1 Hacer
			
			escribir nr[i,j]
			
		FinPara
	FinPara
Fin Funcion
//funcion opcion 8//
Funcion m <- arreglo (  )
	dimension est(1000000000)
	
	escribir "ingrese numero de estudiantes"
	leer ne
	
	
	para i<-1 hasta ne con paso 1 hacer
		escribir"Ingrese nombre de estudiante"
		leer nom
		est[i]<-nom
		
	FinPara
	
	para i<-1 hasta ne con paso 1 hacer
		
		escribir sin saltar est[i] " "
		
	FinPara
Fin Funcion
//funcion opcion 9//
Funcion info <- datosestudiantes (  )
	dimension if[30]

		para i<-1 hasta 30 Hacer
			escribir "Ingrese nombre estudiante"
			leer nom
			nom<-nom+"-"
			escribir "Ingrese edad estudiante"
			leer edad
			edad<-edad+"-"
			escribir "Ingrese fono estudiante"
			leer fono
			fono<-fono+"-"
			escribir "Ingrese email estudiante"
			leer mail
		
			if[i]<-nom +edad  +fono  +mail
			
		fin para
		para i<-1 hasta 30 hacer
			escribir "Estudiante" i ": " if[i]
		FinPara
		
Fin Funcion

Algoritmo menu_ej1
	Repetir
		
		escribir ""
		escribir "Menu"
		escribir""
		escribir "1.- Secuencial: "
		escribir "2.- Condicional SI entonces: "
		escribir "3.- CondicionalSI entonces anidado: "
		escribir "4.- Condicional segun: "
		escribir "5.- Repetitiva Mientras: "
		escribir "6.- Repetitiva Repetir: "
		escribir "7.- Repetitiva Para: "
		escribir "8.- Arreglo Simple: "
		escribir "9.- Arreglo bidimensional: "
		escribir "10.- Salir: "
		
		escribir ""
		escribir "Ingrese opcion: "
		leer op
		
		escribir""
		
		segun op hacer
			1:
				r1<-promedio
				escribir "el promedio de los valores ingresados es: " r1
	
			2:
				r2<-baño
				
			3:
				r3<- pagobaño
			4:
				escribir "Introduzca un numero del 1 al 10"
				leer n
				r4<-escribirnumero(n)
				escribir r4
			5:
				escribir "Ingrese un numero"
				leer n
				r5<-promedionumeros(n)
				escribir "el promedio de los numero es: " r5
			6:
				r6<-ganaste
				escribir r6
			7://malo
				escribir nombrerepetido
			8:
				r8<-arreglo
				escribir r6
			9:
				r9<-datosestudiantes 
				
		FinSegun
		
	Hasta Que op=10
FinAlgoritmo
