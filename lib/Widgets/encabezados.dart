import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'imports.dart';

// VER MAS /////////////////////////////////////////////////////////////////////
class EncabezadoTitulo extends StatefulWidget {

  @override
  _EncabezadoTituloState createState() => _EncabezadoTituloState();


  final String texto;

  const EncabezadoTitulo({Key? key, required this.texto}) : super(key: key);

}

class _EncabezadoTituloState extends State<EncabezadoTituloyAtras> {

  @override
  Widget build(BuildContext context) {

    return Row(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        textoTitulo(widget.texto),

      ],
    );
  }

}

Widget encabezadoConFoto(String texto){

  return Row(

    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,

    children: [

      textoTituloSinExpanded(texto),

      imagenRedondaConBorde("assets/imagenes/perfil.png"),

    ],
  );

}


// VER MAS /////////////////////////////////////////////////////////////////////
class EncabezadoTituloyAtras extends StatefulWidget {

  @override
  _EncabezadoTituloyAtrasState createState() => _EncabezadoTituloyAtrasState();


  final String texto;

  const EncabezadoTituloyAtras({Key? key, required this.texto}) : super(key: key);

}

class _EncabezadoTituloyAtrasState extends State<EncabezadoTituloyAtras> {

  @override
  Widget build(BuildContext context) {

    return Row(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [

        BotonIcono(function: atras, icono: Icons.arrow_back_ios),

        textoTitulo(widget.texto),

      ],
    );
  }

  atras(){

    Navigator.of(context).pop();

  }
}

// VER MAS /////////////////////////////////////////////////////////////////////
class EncabezadoVerMas extends StatefulWidget {

  @override
  _EncabezadoVerMasState createState() => _EncabezadoVerMasState();

  final void Function() function;

  final String textoBoton;
  final String textoTitulo;

  const EncabezadoVerMas({Key? key, required this.textoBoton, required this.textoTitulo, required this.function}) : super(key: key);

}

class _EncabezadoVerMasState extends State<EncabezadoVerMas> {

  @override
  Widget build(BuildContext context) {

    return SizedBox(

      width: 100,
      height: 55,

      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          textoSubitulo(widget.textoTitulo),


          BotonTexto(texto: widget.textoBoton, function: widget.function),


        ],
      ),
    );
  }
}

// VER MAS /////////////////////////////////////////////////////////////////////
class EncabezadoVerMasySubtitulo extends StatefulWidget {

  @override
  _EncabezadoVerMasySubtituloState createState() => _EncabezadoVerMasySubtituloState();

  final void Function() function;

  final String textoBoton;
  final String textoTitulo;
  final String textoSubtitulo;

  const EncabezadoVerMasySubtitulo({Key? key, required this.textoBoton, required this.textoTitulo,required this.textoSubtitulo, required this.function}) : super(key: key);

}

class _EncabezadoVerMasySubtituloState extends State<EncabezadoVerMasySubtitulo> {

  @override
  Widget build(BuildContext context) {

    return SizedBox(

      width: 100,
      height: 55,

      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Column(

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Text(
                  widget.textoTitulo,
                  overflow: TextOverflow.ellipsis,
                  maxLines: MAXLINES,
                  style: GoogleFonts.montserrat(
                    fontSize: TEXTOSUBTITULO_SIZE,
                    fontWeight: TEXTOSUBTITULO_WEIGHT,
                    color: COLOR_TEXT,
                  )
              ),


              Row(

                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [

                  Text(
                      widget.textoSubtitulo,
                      overflow: TextOverflow.ellipsis,
                      maxLines: MAXLINES,
                      style: GoogleFonts.montserrat(
                        fontSize: TEXTOCAPTION_SIZE,
                        fontWeight: TEXTOCAPTION_WEIGHT,
                        color: COLOR_SUBTEXT,
                      )
                  ),

                  espacio(5),

                  imagenRedonda("assets/imagenes/verificado.png",size: 4 )



                ],

              ),

              relleno(),


            ],
          ),

          BotonTexto(texto: "Ver más", function: widget.function),


        ],
      ),
    );
  }
}

// VER MAS /////////////////////////////////////////////////////////////////////
class EncabezadoBuscarYFiltros extends StatefulWidget {

  @override
  _EncabezadoBuscarYFiltrosState createState() => _EncabezadoBuscarYFiltrosState();

  final void Function() function;
  final String texto;
  final TextEditingController controller;

  const EncabezadoBuscarYFiltros({Key? key, required this.texto, required this.function, required this.controller}) : super(key: key);

}

class _EncabezadoBuscarYFiltrosState extends State<EncabezadoBuscarYFiltros> {

  @override
  Widget build(BuildContext context) {

    return Row(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        cajaTextoFondoIcono(widget.texto, "No puede estar vacío",  Icons.search, widget.controller),

        BotonIcono(function: widget.function, icono: Icons.filter_list)


      ],
    );
  }
}


