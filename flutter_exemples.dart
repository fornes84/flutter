import 'dart:math';
//dartpad.dev pagina web per fer aquestes proves
// dart3 es la última verisó quie existeix a data d'avui 16/07/24

var name = false;  //no definim la variable, Dart ho fa
int a=1; //aqui si especificquem

double pi = 3.141516;

main(){
  dynamic newName ="Joan"; //no s_utilitza mai, poser per un diccionari o un JSON
   print (!name);
  newName=2;
  String value ="3";
  
  int v = int.parse(value); //convertir string a enter
  String valString = v.toString(); //convertir enter a string
  print(v);
  print(valString);
  
  print (pi.toStringAsFixed(4)); //truncar a 4 decimals un double
  print("El valor de PI trubncat a 2 es ${pi.toStringAsFixed(2)}"); //expresio a evaluar
  
   print("El valor de PI" 
         "truncat a 2 es "
          "${pi.toStringAsFixed(2)}"); //idem pero mes llegible
  
  (String,int) record=("Uno",1); //dupla o record, útil si volem una funcio que retorna dos valors
  
  (int,int) swap ( (int,int) record) {  //volem funcio que intercanvi valor de 2 valors
    var (a,b) = record;
    return(b,a);
  }
  
  (int,int) record_1=(5,1);  //assignem
  print(swap(record_1).$2);   //cridem funcio pero nomes volem el segon valor de la tupla
  
  ///////////////////////////////////////
  
 // (int,String) lengthAndString(String data){   //falta cridar per veure que fa
  //  retrun((data.lenght,data.substring(0,1)));
 // }
  
  

  ///////////////////////LLISTES //////////////////
  
  List llista=[1,2,3,4];  // o també var llista=[1,2,3,4]; ho interpreta igual
  
  print(llista);
  
  print(llista.runtimeType); //ens diu una variable de quuin tipus es, va bé per debugar
  
  // si volem saber si una llista esta buida (true/false)
  print(llista.isEmpty); //  també print(llista.isNotEmpty);
  
  llista.shuffle(); //desordena la llista aletoruabnent
  print(llista);
  
  llista.sort(); //ordena
  
  print(llista.take(2));//agafar els X elements primers d'una llista torna un iterable
  print(llista.take(2).toList);//convertir a llista

  
  //////////////////Volem pintar quantes lletres te un string///
  // una funcio de DART es treballa com una funcio, una funcio li pot pasar una altre funcio
  
  //List<String> months=['febrer','març'];
  //retornem el tamany de caracteres de cada elemtn de la llista
  //print(months.map(
  //(month){
  //  return month.length;
 // }));
    
  ////////////////volem els mesos que comencin per "f" de la llista ////////////////
   
       //print(months.where((month) {
       //   return month.startsWith('f');
       // }));
        
  ///////////////////////////////////////////////////////////
        
      //set <string>  
        
        
        
 //////////ara diccionaris !!!//////////////////////////
        
        Map<String, String> countries = {
          'ES': "Espanya",
          "FR": "França",
        };
        
        countries["DE"]="Alemanya";
        print ('El pais de codi FR és ${countries.values}');
        
        
  /////////////////////////////////////////////////////////////
  
  var daily = ["dilluns","dimarts","dimecres"];
  var weekend = ["dissabte","diumenge"];
  
  var alldays=["lunes", ...weekend];
  
  print(alldays);
// o també
  print (daily + weekend);
  
   ////////////llistes amb condicions
  
  var juevesFiesta = true;
  
  var holidays2=["dissabte","diumenge", if (juevesFiesta) "jueves"];
  
  print (holidays2);
    
  
  ///////iteracions dins de llistes , va molt bé de cara fer widgets
  
  var holidays3 = ["dissabte",
                 "diumenge", 
                 if (juevesFiesta) "jueves", 
  for (int i=0;i>3;i++) daily[i],
  ];
  
  
  
  
  //// PARLEM DE FUNCIONS ARA: ///////
  // Funcions funcionen com a variables, es poden tractar com a tal.
  // si una funcio només té una linea es pot escriure de forma més simple
  
  
  int longitut(List llista){   
    return llista.length;
  }
  
  // o bé es pot escriure: 
  
  int longitut2(List llista)=> llista.length;
  
  /////////////////////////
  
  var chars = "ABCDEFGHIJKLMNOPQRSTUVW";
  
  String randomLetter(){
    return chars[Random().nextInt(chars.length)];
  }
    
// ara crida una funcio dins d'una funcio
  
  String repeat (Function f, int times){
    String returnValue = "";
    for (int i=0; i<times; i++){
      returnValue += f.call();    
    }
    return returnValue;
  }
  
  
  // bucles amb DART
  
  // break  --> salta
  // continue --> es com el "next for"
  
  // existeixen també labels per fer salts!! com a vba
  
  
  // Control dexepcions, contro d'error o coses no controlades
 
  //try

  // finally: part de codi que salta tant si hi ha un error com no (sempre es fa)
  
///////////////////////////////// Naming Conventions ///////////////////////
  
  //clases --> Comencen per majuscula enllaça amb majuscula SlimMenu
    
 // packages, fitxers,directoris --> sempre monuscules i separats en barrabaixa, exemple: nom_fitxer
    // (pq funcioni amb Windows o Linux)
  
  
  
  // Operadors:
  // Els raros:
    // ""
    // "/"
    // "is"
    // "as"
    // "??"
  
  
  
  ////////////////////////PENDENT/////////////////////////////////
  
  // ull temps de compilació vs temps d'execució
  //per entendre la paraula reservada "final" i "const"
  
  // Concepte de wrap--> envolicar un widget sobre un altre widget (molt útil, amb el botó dret es pot fer)
  // ahir vam fer un exemple amb NO RECORDO.
  
  
