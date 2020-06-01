/*Programación Lógica y Funcional (U4). Programación Lógica. Ejercicios*/
/*Integrantes de la bina: Carlos Eduardo Cupul Hau, Luis Adrián Balam Espadas*/
/*Docente: M.M.M.D José Leonel Pech May. Ejercicio 8 de la pág. 136*/
inc([],[]).
inc([A|L],[A1|L1]):-A1 is A+1,inc(L,L1).

