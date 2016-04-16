Proceso sin_titulo
	cont_partido<-0;
	goles_a_favor<-0;
	goles_en_contra<-0;
	dif_goles<-0;
	puntos<-0;
	cont_partido_ganado<-0;
	cont_partido_empatado<-0;
	cont_partido_perdido<-0;
	
	
    Repetir
		
		Escribir "Ingrese cantidad de goles a favor";
		Leer goles_a_favor;
		
		Escribir "Ingrese cantidad de goles en contra";
		Leer goles_en_contra;
		
	    
		Limpiar Pantalla;
		
		Si (goles_a_favor>goles_en_contra) Entonces
			cont_partido_ganado<-cont_partido_ganado+1;
			puntos<-puntos+3;
		Sino
			Si (goles_a_favor<goles_en_contra) Entonces
				cont_partido_perdido<-cont_partido_perdido+1;
				puntos<-puntos;
			Sino
				cont_partido_empatado<-cont_partido_empatado+1;
				puntos<-puntos+1;
			FinSi
		FinSi
		
		cont_partido<-cont_partido+1 ;		
		

	Hasta Que cont_partido==10
	

		dif_goles<-goles_a_favor-goles_en_contra;		
		Escribir "Los goles a favor son: ", goles_a_favor;
		Escribir "Los goles en contra son: ", goles_en_contra;
		Escribir "Los puntos son: ", puntos;
		Escribir "La cantidad de partidos ganados es: ", cont_partido_ganado;
		Escribir "La cantidad de partidos empadados es: ", cont_partido_empatado;
		Escribir "La cantidad de partidos perdidos es: ", cont_partido_perdido;
		Escribir "La diferencia de goles es: ", dif_goles ;
		
		
		Si puntos<10 Entonces
			Escribir "Liguilla de promoción";
		Sino
			Si puntos>=10 o puntos<=20 Entonces
				Escribir "No liguilla";
			Sino
				Escribir "Liguilla de campeonato";
			FinSi
		FinSi
	
	
FinProceso
