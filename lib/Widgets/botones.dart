import '/Widgets/imports.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


// BOTON ///////////////////////////////////////////////////////////////////////
class Boton extends StatefulWidget {

  @override
  _BotonState createState() => _BotonState();

  final void Function() function;

  final String texto;
  final double sizeTexto;

  const Boton({Key? key, required this.texto,required this.function, this.sizeTexto = TEXTOBOTON16_SIZE}) : super(key: key);

}

class _BotonState extends State<Boton> {

  @override
  Widget build(BuildContext context) {

    return SizedBox(

      height: BOTON_ALTO,
      width: double.infinity,

      child: TextButton(


        style: TextButton.styleFrom(

          // FORMA /////////////////////////////////////////////////////////////////
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(BOTON_ESQUINA),
          ),

          backgroundColor: COLOR_ACCENT,
        ),


        // TEXTO /////////////////////////////////////////////////////////////////

        child: Text(
            widget.texto,

          style: TextStyle(
            fontFamily: "Gilroy",
              fontSize: widget.sizeTexto,
              fontWeight: TEXTOBOTON16_WEIGHT,
              color: COLOR_TEXTBUTTON,
            ),
        ),

        onPressed: () {

          widget.function();


        },

      ),
    );
  }
}


// BOTON ///////////////////////////////////////////////////////////////////////
class BotonBorde extends StatefulWidget {

  @override
  _BotonBordeState createState() => _BotonBordeState();

  final void Function() function;

  final String texto;
  final double sizeTexto;
  final double width;

  const BotonBorde({Key? key, required this.texto,required this.function, this.sizeTexto = TEXTOBOTON16_SIZE, this.width = double.infinity}) : super(key: key);

}

class _BotonBordeState extends State<BotonBorde> {

  @override
  Widget build(BuildContext context) {

    return SizedBox(

      height: BOTON_ALTO,
      width: widget.width,

      child: TextButton(

        style: TextButton.styleFrom(
          primary: Colors.teal,

          side: const BorderSide(color: COLOR_ACCENT, width: BUTTON_BORDER_TAMANO),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(BOTON_ESQUINA),
          ),

        ),

        // TEXTO /////////////////////////////////////////////////////////////////

        child: Text(
          widget.texto,

          style: GoogleFonts.montserrat(
            fontSize: widget.sizeTexto,
            fontWeight: TEXTOBOTON16_WEIGHT,
            color: COLOR_ACCENT,
          ),
        ),

        onPressed: () {

          widget.function();


        },

      ),
    );
  }
}



// BOTON ICONO /////////////////////////////////////////////////////////////////
class BotonIcono extends StatefulWidget {

  @override
  _BotonIconoState createState() => _BotonIconoState();

  final void Function() function;
  final IconData icono;


  // final Color coloricon;
  // final Color colorbutton;
  // final Color highlightColor;
  // final Color hoverColor ;
  // final Color splashColor;
  // final Color focusColor;

  const BotonIcono({Key? key, required this.function, required this.icono }) : super(key: key);

}

class _BotonIconoState extends State<BotonIcono> {

  @override
  Widget build(BuildContext context) {

    return IconButton(
      icon: Icon(widget.icono,
          color: COLOR_ICON,
          size: SIZE_ICON),

      color: COLOR_ICONBUTTON,
      highlightColor: COLOR_ICONBUTTON_HIGHLIGHT ,
      hoverColor: COLOR_ICONBUTTON_HOVER,
      splashColor: COLOR_ICONBUTTON_SPLASH,

      onPressed: (){

        widget.function;

      },
    );
  }
}


// BOTON TEXTO /////////////////////////////////////////////////////////////////
class BotonTexto extends StatefulWidget {

  @override
  _BotonTextoState createState() => _BotonTextoState();

  final void Function() function;
  final String texto;

  const BotonTexto({Key? key, required this.texto,required this.function}) : super(key: key);

}

class _BotonTextoState extends State<BotonTexto> {

  @override
  Widget build(BuildContext context) {

    return TextButton(

      style: TextButton.styleFrom(


        // FORMA /////////////////////////////////////////////////////////////////
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(BOTON_ESQUINA),
        ),

        primary: COLOR_ICONBUTTON_SPLASH,
        backgroundColor: Colors.transparent,
      ),


      // TEXTO /////////////////////////////////////////////////////////////////

      child: Text(
        widget.texto,
        style: GoogleFonts.montserrat(
          fontSize: TEXTOCAPTION_SIZE,
          fontWeight: TEXTOCAPTION_WEIGHT,
          color: COLOR_SUBTEXT,
        ),
      ),

      onPressed: () {

        widget.function();


      },

    );
  }
}



// BOTON ICONO + TEXTO /////////////////////////////////////////////////////////
class BotonIconoTexto extends StatefulWidget {

  @override
  _BotonIconoTextoState createState() => _BotonIconoTextoState();

  final void Function() funcion;
  final IconData icono;
  final String texto;
  final double anchoIcono;


  // final Color coloricon;
  // final Color colorbutton;
  // final Color highlightColor;
  // final Color hoverColor ;
  // final Color splashColor;
  // final Color focusColor;

  const BotonIconoTexto({Key? key, required this.funcion, required this.icono, required this.texto, required this.anchoIcono}) : super(key: key);

}

class _BotonIconoTextoState extends State<BotonIconoTexto> {

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      onPressed: widget.funcion,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(BOTON_ESQUINA),
          ),

          primary: COLOR_ACCENT,
        ),
        child: SizedBox(
          height: BOTON_ALTO,
          width: widget.anchoIcono,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(widget.icono,
                  color: COLOR_FONDO,
                  size: SIZE_ICON),
              espacio(ESPACIO_PEQUENO),
              Text(
                widget.texto,
                style: GoogleFonts.montserrat(
                  fontSize: TEXTO_BODY_SIZE,
                  fontWeight: TEXTO_TITULO_WEIGHT,
                  color: COLOR_FONDO,
                ),
              ),
            ],

          ),
        ),

    );
  }
}




// FLATING ACTION BUTTON REDONDO ///////////////////////////////////////////////
class BotonRedondoSombra extends StatefulWidget {

  @override
  _BotonRedondoSombraState createState() => _BotonRedondoSombraState();

  final void Function() function;
  final IconData icono;

  const BotonRedondoSombra({Key? key, required this.icono,required this.function}) : super(key: key);

}

class _BotonRedondoSombraState extends State<BotonRedondoSombra> {

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: SIZE_FLOATINGBUTTON,
      width: SIZE_FLOATINGBUTTON,
      child: FittedBox(
        child: FloatingActionButton(


          child: Icon(
              widget.icono,
              color: COLOR_FONDO,
              size: ICON_SIZE_FLOATING),

          splashColor: COLOR_ICONBUTTON_SPLASH,
          backgroundColor: COLOR_ACCENT,

          onPressed: () {



          },
        ),
      ),
    );

  }
}


// BOTON "CAPITÁN" /////////////////////////////////////////////////////////////
class BotonCapitan extends StatefulWidget {

  @override
  _BotonCapitanState createState() => _BotonCapitanState();

  final void Function() function;
  final String texto;
  final Color color;

  const BotonCapitan({Key? key, required this.texto,required this.function,required this.color}) : super(key: key);

}

class _BotonCapitanState extends State<BotonCapitan> {

  @override
  Widget build(BuildContext context) {


    return TextButton(

      style: TextButton.styleFrom(


        // FORMA /////////////////////////////////////////////////////////////////
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(BOTON_ESQUINA),
        ),

        primary: COLOR_ICONBUTTON_SPLASH,
        backgroundColor: Colors.transparent,
      ),


      // TEXTO /////////////////////////////////////////////////////////////////

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          textoTituloCentro(widget.texto, color: Colors.white),
          espacio(ESPACIO_PEQUENO),
          Container(
            height: 10,
            color: widget.color,
          ),
        ],
      ),





      onPressed: () {

        widget.function();


      },

    );
  }
}