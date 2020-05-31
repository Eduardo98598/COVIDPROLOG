
%HECHOS PARA LA DETECCIÓN DE PROBABILIDAD DE COVID19 POR SINTOMAS/
%% % tiene(X,Y): X tiene Y
tiene(carlos,tos ).
tiene(carlos,dolor).
tiene(jorge,cansansio).
tiene(henry,calentura).
tiene(enrique,calentura).
tiene(henry, tos).
tiene(raul,vomitos).
tiene(santiago,diarrea).
tiene(henry,dolor).

%HECHOS PARA LA DETECCIÓN DE PROBABILIDAD DE COVID19 POR ENFERMEDADES/
%% % padece(X,Y): X padece de Y
padece(carlos, diabetes).
padece(manuel,asma).
padece(jorge,obesidad).
padece(henry, hipertension).
padece(enrique,vih).
padece(henry, obesidad).
padece(raul,alergias).
padece(santiago,insomio).
padece(teo, colitis).

%REGLAS PARA LAS PROBABILIDADES POR ENFERMEDADES

probable(X,covid):- padece(X,diabetes);padece(X, hipertension);padece(X, obesidad);padece(X,asma);padece(X,vih).

probmorir(X,covid):-padece(X,hipertension),padece(X,obesidad);padece(X,diabetes),padece(X,obesidad);padece(X,asma),padece(X,obesidad).

probvivir(X):- padece(X,alergias);padece(X,insomio);padece(X,colitis).


%REGLAS PARA LAS PROBABILIDADES POR SINTOMAS

infectado(X,covid):- tiene(X,tos),tiene(X,calentura);tiene(X,dolor);tiene(X,tos),tiene(X,dolor).


noinfectado(X,covid):- tiene(X,cansansio);tiene(X,vomitos);tiene(X,diarrea).
