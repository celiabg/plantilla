import '/Widgets/imports.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


Dialog dialogo(Color color, TextEditingController controller1, TextEditingController controller2){
  return Dialog(
    backgroundColor: color,
    child: Container(
      height: 500,
      width: 650,
      child: Column(
        children: [
          textoSubitulo("Editar elemento"),
          Row(
            children: [
              imagenRedondaConBorde("foto"),
              Column(
                children: [
                  cajaTexto(controller1, "Texto error 1", "Contenido 1"),
                  cajaTexto(controller2, "Texto error 1", "Contenido 1"),
                ],
              )
            ],
          ),
         // boton(texto: "Confirmar cambios", function: null, sizeTexto: TEXTOBOTON16_SIZE),
        ],
      ),


    ),
  );
}