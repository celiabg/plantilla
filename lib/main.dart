import 'dart:html';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:string_splitter/string_splitter.dart';

import 'Widgets/imports.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {


  /// VARIABLES ////////////////////////////////////////////////////////////////
  List<String> listaNombres = [];
  List<String> listaSuplentes = [];
  final controllerSorteo = TextEditingController();
  String ganador = "";
  String suplentes = "";


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.green,

      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            TextField(
              controller: controllerSorteo,
              keyboardType: TextInputType.multiline,
              maxLines: 15,

              onChanged: (String texto) async {
                controllerSorteo.text = controllerSorteo.text.replaceAll(" ", "").toLowerCase();
              },
            ),

            Boton(texto: 'Comenzar sorteo', function: hacerSorteo),

           textoTituloCentro(ganador),

            Center(

              child:
              Text(suplentes,
                  style:  const TextStyle(
                    fontFamily: "Gilroy",
                    fontSize: TEXTOSUBTITULO_SIZE,
                    fontWeight: TEXTOSUBTITULO_WEIGHT,
                    color: Colors.white,
                  )),
            ),

          ],
        ),
      ),

    );
  }




  /// FUNCIONES ////////////////////////////////////////////////////////////////
  hacerSorteo(){

    //Limpiamos lista
    listaNombres.clear();

    //Dividimos por saltos de linea
    listaNombres = StringSplitter.split(
      controllerSorteo.text,
      splitters: ['\n'],
      trimParts: true,
    );

    //Ordenamos valores
    listaNombres.sort();

    //Comenzamos comparación
    int contador = 1;

    for(int i = 0; i < listaNombres.length; i++){

      if(i>0){
        if(listaNombres[i-1].compareTo(listaNombres[i]) == 0){
          contador++;

        }else{
          //print(contador.toString() + "  -   " + listaNombres[i-1].toString());
          contador = 1;
        }
      }
    }
    obtenerSuplentes();
  } // función "hacerSorteo"



  obtenerSuplentes(){

    listaSuplentes.clear();

    //Generamos numero random
    Random random = Random();
    int primerNumero = random.nextInt(listaNombres.length);

    //Generamos ganador
    listaSuplentes.add(listaNombres[primerNumero]);

    setState(() {
      ganador = "Ganador: " + listaSuplentes[0].toString();
    });


    //Obtenemos suplentes
    for(int i = 0; i < 5; i++){

      //Generamos numero random
      Random random = Random();
      int numero = random.nextInt(listaNombres.length);

      for(int j=0; j<listaSuplentes.length; j++){
        //Persona igual
        while(listaNombres[numero].compareTo(listaSuplentes[j])==0){
          numero = random.nextInt(listaNombres.length);
        } // while

      } // for (j)

      listaSuplentes.add(listaNombres[numero]);
    } // for (i)

    setState(() {
      suplentes = "Suplentes:\n";

      for (int i=1; i<listaSuplentes.length; i++){
        suplentes = suplentes + listaSuplentes[i] + "\n";
      }

    });

  } // función "obtenerSuplentes"


}
