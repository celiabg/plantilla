import '/Theme/constantes.dart';
import '/Widgets/imports.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

SnackBar snackbar(Color color, String texto, IconData icono){
  return SnackBar(
    backgroundColor: color,
    content: Container(
      child: Row(
        children: [
          Icon(
            icono,
            color: COLOR_TEXTOSNACKBAR,
            size: SIZE_ICON,
          ),
          espacio(
              ESPACIO_PEQUENO
          ),
          Text(
              texto,
              style: GoogleFonts.montserrat(
                fontSize: TEXTOSNACKBAR_SIZE,
                fontWeight: TEXTOSNACKBAR_WEIGHT,
                color: COLOR_TEXTOSNACKBAR,
              )
          )
        ],
      ),
    ),
  );
}