import '/Theme/constantes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget cajaTexto(TextEditingController controller, String error, String texto) {

  return Expanded(

    child: TextFormField(

      controller: controller,
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.none,
      cursorColor: COLOR_ACCENT,
      style: GoogleFonts.montserrat(
        fontSize: TEXTO_BODY_SIZE,
        fontWeight: TEXTOBODY_WEIGHT,
        color: COLOR_TEXT,
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (arg) {
        if(arg.toString().isNotEmpty) {
          return null;
        }
        else {
          return error;
        }},

      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: COLOR_HINT,
              width: TEXTFIELD_BORDE),
        ),

        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
              color: COLOR_ACCENT,
              width: TEXTFIELD_BORDE),
        ),

        errorBorder:const OutlineInputBorder(
          borderSide: BorderSide(
              color: COLOR_ERROR,
              width: TEXTFIELD_BORDE),
        ),

        focusedErrorBorder: const OutlineInputBorder(

          borderSide: BorderSide(
              color: COLOR_ACCENT,
              width: TEXTFIELD_BORDE),
        ),


        errorStyle: GoogleFonts.montserrat(
          fontSize: TEXTOERROR_SIZE,
          fontWeight: TEXTOERROR_WEIGHT,
          color: COLOR_ERROR,
        ),


        ///LABEL /////////////////////////////////////////////
        labelText: texto,
        labelStyle: GoogleFonts.montserrat(
          fontSize: TEXTO_BODY_SIZE,
          fontWeight: TEXTOBODY_WEIGHT,
          color: COLOR_SUBTEXT,
        ),


      ),


    ),
  );

}

Widget cajaTextoSinExpanded(TextEditingController controller, String error, String texto,{int maxlines = 1}) {

  return  TextFormField(

    controller: controller,
    keyboardType: TextInputType.emailAddress,
    textCapitalization: TextCapitalization.none,
    cursorColor: COLOR_ACCENT,
    maxLines: maxlines,
    style: GoogleFonts.montserrat(
      fontSize: TEXTO_BODY_SIZE,
      fontWeight: TEXTOBODY_WEIGHT,
      color: COLOR_TEXT,
    ),
    autovalidateMode: AutovalidateMode.onUserInteraction,
    validator: (arg) {
      if(arg.toString().isNotEmpty) {
        return null;
      }
      else {
        return error;
      }},

    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: COLOR_ACCENT.withOpacity(0.8),
            width: TEXTFIELD_BORDE),
      ),

      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
            color: COLOR_ACCENT,
            width: TEXTFIELD_BORDE),
      ),

      errorBorder:const OutlineInputBorder(
        borderSide: BorderSide(
            color: COLOR_ERROR,
            width: TEXTFIELD_BORDE),
      ),

      focusedErrorBorder: const OutlineInputBorder(

        borderSide: BorderSide(
            color: COLOR_ACCENT,
            width: TEXTFIELD_BORDE),
      ),


      errorStyle: GoogleFonts.montserrat(
        fontSize: TEXTOERROR_SIZE,
        fontWeight: TEXTOERROR_WEIGHT,
        color: COLOR_ERROR,
      ),


      ///LABEL /////////////////////////////////////////////
      labelText: texto,
      labelStyle: GoogleFonts.montserrat(
        fontSize: TEXTO_BODY_SIZE,
        fontWeight: TEXTOBODY_WEIGHT,
        color: COLOR_SUBTEXT,
      ),


    ),


  );

}

Widget cajaTextoIcono(TextEditingController controller, String error, String texto, IconData icon,) {

  return Expanded(

    child: TextFormField(

      controller: controller,
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.none,
      cursorColor: COLOR_ACCENT,
      style: GoogleFonts.montserrat(
        fontSize: TEXTOSUBTITULO_SIZE,
        fontWeight: TEXTOSUBTITULO_WEIGHT,
        color: COLOR_TEXT,
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (arg) {
        if(arg.toString().isNotEmpty) {
          return null;
        }
        else {
          return error;
        }},

      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: COLOR_HINT,
              width: TEXTFIELD_BORDE),
        ),

        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
              color: COLOR_ACCENT,
              width: TEXTFIELD_BORDE),
        ),

        errorBorder:const OutlineInputBorder(
          borderSide: BorderSide(
              color: COLOR_ERROR,
              width: TEXTFIELD_BORDE),
        ),

        focusedErrorBorder: const OutlineInputBorder(

          borderSide: BorderSide(
              color: COLOR_ACCENT,
              width: TEXTFIELD_BORDE),
        ),


        errorStyle: GoogleFonts.montserrat(
          fontSize: TEXTOERROR_SIZE,
          fontWeight: TEXTOERROR_WEIGHT,
          color: COLOR_ERROR,
        ),


        ///LABEL /////////////////////////////////////////////
        labelText: texto,
        labelStyle: GoogleFonts.montserrat(
          fontSize: TEXTO_BODY_SIZE,
          fontWeight: TEXTOBODY_WEIGHT,
          color: COLOR_TEXT,
        ),

        prefixIcon: Icon(
          icon,
          color: COLOR_TEXT,
        ),


      ),



    ),
  );

}

Widget cajaTextoFondo(String texto, String error, TextEditingController controller ) {

  return Expanded(

    child: TextFormField(

      controller: controller,
      keyboardType: TextInputType.text,
      textCapitalization: TextCapitalization.none,
      cursorColor: COLOR_ACCENT,

      style: GoogleFonts.montserrat(
        fontSize: TEXTO_TEXTFIELD_SIZE,
        fontWeight: TEXTO_TEXTFIELD_WIDTH,
        color: COLOR_TEXT,
      ),

      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (arg) {
        if(arg.toString().isNotEmpty) {
          return null;
        }
        else {
          return error;
        }},


      decoration: InputDecoration(

        filled: true,
        fillColor: COLOR_FONDO_TEXTFIELD,

        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(RADIUS)),
          borderSide: BorderSide(
              color: COLOR_FONDO_TEXTFIELD,
              width: TEXTFIELD_BORDE),
        ),

        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(RADIUS)),
          borderSide: BorderSide(
              color: COLOR_ACCENT,
              width: TEXTFIELD_BORDE),
        ),

        errorBorder:const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(RADIUS)),
          borderSide: BorderSide(
              color: COLOR_ERROR,
              width: TEXTFIELD_BORDE),
        ),

        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(RADIUS)),
          borderSide: BorderSide(
              color: COLOR_ERROR,
              width: TEXTFIELD_BORDE),
        ),


        errorStyle: GoogleFonts.montserrat(
          fontSize: TEXTOERROR_SIZE,
          fontWeight: TEXTOERROR_WEIGHT,
          color: COLOR_ERROR,
        ),


        ///LABEL /////////////////////////////////////////////
        labelText: texto,
        labelStyle: GoogleFonts.montserrat(
          fontSize: TEXTO_TEXTFIELD_SIZE,
          fontWeight: TEXTO_TEXTFIELD_WIDTH,
          color: COLOR_TEXT,
        ),


      ),


    ),
  );

}

Widget cajaTextoFondoIcono(String texto, String error, IconData icon, TextEditingController controller ) {

  return Expanded(

    child: TextFormField(

      controller: controller,
      keyboardType: TextInputType.text,
      textCapitalization: TextCapitalization.none,
      cursorColor: COLOR_ACCENT,

      style: GoogleFonts.montserrat(
        fontSize: TEXTO_TEXTFIELD_SIZE,
        fontWeight: TEXTO_TEXTFIELD_WIDTH,
        color: COLOR_TEXT,
      ),

      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (arg) {
        if(arg.toString().isNotEmpty) {
          return null;
        }
        else {
          return error;
        }},


      decoration: InputDecoration(

        filled: true,
        fillColor: COLOR_FONDO_TEXTFIELD,

        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(RADIUS)),
          borderSide: BorderSide(
              color: COLOR_FONDO_TEXTFIELD,
              width: TEXTFIELD_BORDE),
        ),

        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(RADIUS)),
          borderSide: BorderSide(
              color: COLOR_ACCENT,
              width: TEXTFIELD_BORDE),
        ),

        errorBorder:const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(RADIUS)),
          borderSide: BorderSide(
              color: COLOR_ERROR,
              width: TEXTFIELD_BORDE),
        ),

        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(RADIUS)),
          borderSide: BorderSide(
              color: COLOR_ERROR,
              width: TEXTFIELD_BORDE),
        ),


        errorStyle: GoogleFonts.montserrat(
          fontSize: TEXTOERROR_SIZE,
          fontWeight: TEXTOERROR_WEIGHT,
          color: COLOR_ERROR,
        ),


        ///LABEL /////////////////////////////////////////////
        labelText: texto,
        labelStyle: GoogleFonts.montserrat(
          fontSize: TEXTO_TEXTFIELD_SIZE,
          fontWeight: TEXTO_TEXTFIELD_WIDTH,
          color: COLOR_TEXT,
        ),

        prefixIcon: Icon(
          icon,
          color: COLOR_TEXT,
        ),


      ),


    ),
  );

}

Widget cajaTextoFondoSinExpanded(String texto, String error, TextEditingController controller ) {

  return TextFormField(

    controller: controller,
    keyboardType: TextInputType.text,
    textCapitalization: TextCapitalization.none,
    cursorColor: COLOR_ACCENT,

    style: const TextStyle(
      fontFamily: "Gilroy",
      fontSize: TEXTO_TEXTFIELD_SIZE,
      fontWeight: TEXTO_TEXTFIELD_WIDTH,
      color: COLOR_FONDO,
    ),

    autovalidateMode: AutovalidateMode.onUserInteraction,
    validator: (arg) {
      if(arg.toString().isNotEmpty) {
        return null;
      }
      else {
        return error;
      }},


    decoration: InputDecoration(

      filled: true,
      fillColor: Colors.white,

      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(RADIUS)),
        borderSide: BorderSide(
            color: COLOR_FONDO_TEXTFIELD,
            width: TEXTFIELD_BORDE),
      ),

      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(RADIUS)),
        borderSide: BorderSide(
            color: COLOR_ACCENT,
            width: TEXTFIELD_BORDE),
      ),

      errorBorder:const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(RADIUS)),
        borderSide: BorderSide(
            color: COLOR_ERROR,
            width: TEXTFIELD_BORDE),
      ),

      focusedErrorBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(RADIUS)),
        borderSide: BorderSide(
            color: COLOR_ERROR,
            width: TEXTFIELD_BORDE),
      ),


      errorStyle: const TextStyle(
      fontFamily: "Gilroy",
        fontSize: TEXTOERROR_SIZE,
        fontWeight: TEXTOERROR_WEIGHT,
        color: COLOR_ERROR,
      ),


      ///LABEL /////////////////////////////////////////////
      hintText: texto,
      hintStyle: const TextStyle(
      fontFamily: "Gilroy",
        fontSize: TEXTO_TEXTFIELD_SIZE,
        fontWeight: TEXTO_TEXTFIELD_WIDTH,
        color: COLOR_HINT,
      ),




    ),


  );

}

class CajaTextoPassword extends StatefulWidget {

  @override
  _CajaTextoPasswordState createState() => _CajaTextoPasswordState();

  TextEditingController controller;
  String texto;
  String error;

  CajaTextoPassword({Key? key, required this.texto, required this.error, required this.controller}) : super(key: key);

}

class _CajaTextoPasswordState extends State<CajaTextoPassword> {

  bool visible = true;

  @override
  Widget build(BuildContext context) {

    return SizedBox(

      width: double.infinity,

      child: TextFormField(

        controller: widget.controller,
        keyboardType: TextInputType.text,
        obscureText: visible,
        textCapitalization: TextCapitalization.none,
        cursorColor: COLOR_ACCENT,
        style: GoogleFonts.montserrat(
          fontSize: TEXTO_BODY_SIZE,
          fontWeight: TEXTOBODY_WEIGHT,
          color: COLOR_TEXT,
        ),
        validator: (arg) {
          if(arg.toString().isNotEmpty) {
            return null;
          }
          else {
            return widget.error;
          }},

        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: COLOR_ACCENT.withOpacity(0.8),
                width: TEXTFIELD_BORDE),
          ),

          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: COLOR_ACCENT,
                width: TEXTFIELD_BORDE),
          ),

          errorBorder:const OutlineInputBorder(
            borderSide: BorderSide(
                color: COLOR_ACCENT,
                width: TEXTFIELD_BORDE),
          ),

          focusedErrorBorder: const OutlineInputBorder(

            borderSide: BorderSide(
                color: COLOR_ACCENT,
                width: TEXTFIELD_BORDE),
          ),


          errorStyle: GoogleFonts.montserrat(
            fontSize: TEXTOERROR_SIZE,
            fontWeight: TEXTOERROR_WEIGHT,
            color: COLOR_ERROR,
          ),

          focusColor: COLOR_ACCENT,

          ///LABEL /////////////////////////////////////////////
          labelText: widget.texto,
          labelStyle: GoogleFonts.montserrat(
            fontSize: TEXTO_BODY_SIZE,
            fontWeight: TEXTOBODY_WEIGHT,
            color: COLOR_SUBTEXT,
          ),
          suffixIcon: IconButton(

            icon: Icon(
                visible ? Icons.lock_outline : Icons.lock_open_outlined,
              color: COLOR_ACCENT,
            ),
            onPressed: () {
              setState(() {
                visible = !visible;
              });
            },
          ),

        ),



      ),
    );

  }
}

class CajaTextoPasswordFondo extends StatefulWidget {

  @override
  _CajaTextoPasswordFondoState createState() => _CajaTextoPasswordFondoState();

  TextEditingController controller;
  String texto;
  String error;

  CajaTextoPasswordFondo({Key? key, required this.texto, required this.error, required this.controller}) : super(key: key);

}

class _CajaTextoPasswordFondoState extends State<CajaTextoPasswordFondo> {

  bool visible = true;


  @override
  Widget build(BuildContext context) {

    return SizedBox(

      width: double.infinity,

      child: TextFormField(

        controller: widget.controller,
        keyboardType: TextInputType.text,
        obscureText: visible,
        textCapitalization: TextCapitalization.none,
        cursorColor: COLOR_ACCENT,
        style: const TextStyle(
          fontFamily: "Gilroy",
          fontSize: TEXTO_BODY_SIZE,
          fontWeight: TEXTOBODY_WEIGHT,
          color: COLOR_FONDO,
        ),
        validator: (arg) {
          if(arg.toString().isNotEmpty) {
            return null;
          }
          else {
            return widget.error;
          }},

        decoration: InputDecoration(

          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: COLOR_ACCENT.withOpacity(0.8),
                width: TEXTFIELD_BORDE),
          ),

          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: COLOR_ACCENT,
                width: TEXTFIELD_BORDE),
          ),

          errorBorder:const OutlineInputBorder(
            borderSide: BorderSide(
                color: COLOR_ACCENT,
                width: TEXTFIELD_BORDE),
          ),

          focusedErrorBorder: const OutlineInputBorder(

            borderSide: BorderSide(
                color: COLOR_ACCENT,
                width: TEXTFIELD_BORDE),
          ),


          errorStyle: GoogleFonts.montserrat(
            fontSize: TEXTOERROR_SIZE,
            fontWeight: TEXTOERROR_WEIGHT,
            color: COLOR_ERROR,
          ),

          focusColor: COLOR_ACCENT,

          ///LABEL /////////////////////////////////////////////
          hintText: widget.texto,
          hintStyle: const TextStyle(
            fontFamily: "Gilroy",
            fontSize: TEXTO_TEXTFIELD_SIZE,
            fontWeight: TEXTOBODY_WEIGHT,
            color: COLOR_HINT,
          ),
          suffixIcon: IconButton(

            icon: Icon(
              visible ? Icons.lock_outline : Icons.lock_open_outlined,
              color: COLOR_ACCENT,
            ),
            onPressed: () {
              setState(() {
                visible = !visible;
              });
            },
          ),

        ),



      ),
    );

  }
}