from pyswip import Prolog
prolog = Prolog()
prolog.consult("/home/U4LEO/proyecto/hechos.pl")
print("----------------------------------------------------------")
print("SISTEMA EXPERTO PARA LA PREDICION DE LA ENFERMEDAD DE COVID19")
print("----------------------------------------------------------")
r = False

while not r:
    
    for valor in prolog.query("probable(X,covid)"):
        print (' TIENEN MAS PROBABILIDADES DE PADECER COVID19 => ', valor ["X"])

    for valor in prolog.query("probvivir(X)"):
        print (' NO TIENEN PROBABILIDADES DE PADECER COVID19 => ', valor ["X"])
        

    X= input("--------------------------\nPOR SUS SINTOMAS\n--------------------------\n Inserta el nombre de la persona ")

    for valor in prolog.query("tiene("+X+ ", Y)"):
        print (X,' TIENE SINTOMAS DE => ', valor ["Y"],"URGENTE IR AL MÉDICO")

    X= input("--------------------------\nPOR SUS ENFERMEDADES\n--------------------------\nInserta el nombre de la persona ")

    for valor in prolog.query("padece("+X+ ", Y)"):
        print (X,' PADECE DE => ', valor ["Y"],"NECESITA CUIDARSE")    

    for valor in prolog.query("probmorir(X,covid)"):
        print (' TIENEN MAS PROBABILIDADES DE MORIR POR COVID19 => ', valor ["X"])
    
    for valor in prolog.query("infectado(X,covid)"):
        print (' ESTOS SON LOS LOS INFECTADOS DE COVID19 => ', valor ["X"]+" VERIFICAR SINTOMAS")

    for valor in prolog.query("noinfectado(X,covid)"):
        print (' NO INFECTADOS DE COVID19 => ', valor ["X"]+" USAR CUBREBOCAS")

    e = input('1.-SI  2.-NO\n¿QUIERES TERMINAR CON EL SISTEMA?')
    
    r = e.lower() in ['1']
    if r:
        print("Hasta pronto #QUEDATE EN CASA")
        
        



#X= input("¿Esta enfermo?")
#Y= input("¿De?")

##consult= bool(list(prolog.query("padece("+X+","+Y+")")))
##print(consult)