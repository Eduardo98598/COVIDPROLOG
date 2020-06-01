/*Programación Lógica y Funcional (U4). Programación Lógica. Ejercicios*/
/*Integrantes de la bina: Carlos Eduardo Cupul Hau, Luis Adrián Balam Espadas*/
/*Docente: M.M.M.D José Leonel Pech May. Ejercicio 4 de la pág. 27*/

person(bill,male).
person(george,male).
person(alfred,male).
person(carol,female).
person(margaret,female).
person(jane,female).

couple(X,Y):-person(X,male),person(Y,female).

