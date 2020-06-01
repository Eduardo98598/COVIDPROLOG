/*Programación Lógica y Funcional (U4). Programación Lógica. Ejercicios*/
/*Integrantes de la bina: Carlos Eduardo Cupul Hau, Luis Adrián Balam Espadas*/
/*Docente: M.M.M.D José Leonel Pech May. Ejercicio 7 de la pág. 97*/
outsquare(N1,N2):-N1>N2.
outsquare(N1,N2):-
write(N1),write('squared is '),Square is N1*N1,
write(Square),nl,M is N1+1,outsquare(M,N2).
