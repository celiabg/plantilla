import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Theme/constantes.dart';
import 'imports.dart';


//LISTA HORIZONTAL IMAGENES ////////////////////////////////////////////////////
class ListaImagenesCuadradasHorizontal extends StatefulWidget {

  @override
  _ListaImagenesCuadradasHorizontalState createState() => _ListaImagenesCuadradasHorizontalState();

  final void Function() function;

  final int items;

  const ListaImagenesCuadradasHorizontal({Key? key, required this.function, this.items = 5}) : super(key: key);

}

class _ListaImagenesCuadradasHorizontalState extends State<ListaImagenesCuadradasHorizontal> {


  @override
  Widget build(BuildContext context) {

    return SizedBox(

      height: LISTACUADRADA_SIZE,

      child: ListView.separated(

        itemCount: widget.items,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),

        itemBuilder: (context,posicion){

          return Container(

            height: LISTACUADRADA_SIZE,
            width: LISTACUADRADA_SIZE,

            decoration: const BoxDecoration(

              borderRadius: BorderRadius.all(Radius.circular(RADIUS)),

            ),

            child: TextButton(

              onPressed: widget.function,

              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                primary: COLOR_ICONBUTTON_SPLASH,
                backgroundColor: Colors.transparent,
              ),

              child: ClipRRect(
                borderRadius: BorderRadius.circular(RADIUS),
                child: Image.asset(
                  "assets/imagenes/perfil.png",
                  height: LISTACUADRADA_SIZE,
                  width: LISTACUADRADA_SIZE,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );

        },

        separatorBuilder: (BuildContext context, int index) {

          return const SizedBox(

            width: LISTACUADRADA_ESPACIOS,
            height: LISTACUADRADA_ESPACIOS,

          );

        },

      ),
    );
  }
}



//GRIDVIEW FOTOS ///////////////////////////////////////////////////////
class ListaGridViewFotos extends StatefulWidget {

  @override
  _ListaGridViewFotosState createState() => _ListaGridViewFotosState();

  final void Function() function;
  final int items;

  const ListaGridViewFotos({Key? key, required this.function, this.items = 5}) : super(key: key);

}

class _ListaGridViewFotosState extends State<ListaGridViewFotos> {


  @override
  Widget build(BuildContext context) {

    return  GridView.builder(

      itemCount: widget.items,

      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),

      itemBuilder: (context,posicion){

        return Container(

          decoration: const BoxDecoration(
            color: COLOR_HINT,
            borderRadius: BorderRadius.all(Radius.circular(RADIUS)),

            image:  DecorationImage(
              image: ExactAssetImage('assets/imagenes/perfil.png'),
              fit: BoxFit.cover,
            ),


          ),

          child: TextButton(

            onPressed: widget.function,

            style: TextButton.styleFrom(

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(RADIUS),
              ),

              primary: COLOR_ICONBUTTON_SPLASH,
              backgroundColor: Colors.transparent,
            ),

            child: Container(),
          ),


        );

      },  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 1 / 1.1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10
    ),



    );
  }
}

//LISTA MENSAJES ///////////////////////////////////////////////////////
class ListaMensajes extends StatefulWidget {

  @override
  _ListaMensajesState createState() => _ListaMensajesState();

  final void Function() function;
  final int items;

  const ListaMensajes({Key? key, required this.function, this.items = 5}) : super(key: key);

}

class _ListaMensajesState extends State<ListaMensajes> {


  @override
  Widget build(BuildContext context) {

    return ListView.separated(

      itemCount: widget.items,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),

      itemBuilder: (context,posicion){

        return Container(

            padding: EdgeInsets.all(5),


            child: TextButton(

              onPressed: widget.function,

              style: TextButton.styleFrom(

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(RADIUS),
                ),

                primary: COLOR_ICONBUTTON_SPLASH,
                backgroundColor: Colors.transparent,
              ),

              child: Row(

                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Center(

                    child: imagenRedonda("assets/imagenes/perfil.png"),
                  ),



                  espacio(ESPACIO_PEQUENO),

                  ///Textos
                  Column(

                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                      textoBodyNegritaSinExpanded("María López"),

                      Container(

                        width: 200,

                        child: textoCaptionSinExpanded("Muy bueno el entrenamiento, sin duda alguna repetiré asjdnajsdansdad", maxlines: 2),
                      )






                    ],

                  ),

                  ///Textos
                  Column(

                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,

                    children: [



                      textoSmallSinExpanded("22:30"),

                      espacio(ESPACIO_PEQUENO),

                      Container(

                        width: SIZE_INDICADOR_MENSAJESINLEER,
                        height: SIZE_INDICADOR_MENSAJESINLEER,

                        decoration: const BoxDecoration(

                            color: COLOR_MENSAJE_SINLEER,
                          shape: BoxShape.circle
                        ),

                      ),
                    ],
                  ),
                ],
              ),
            )
        );

      },

      separatorBuilder: (BuildContext context, int index) {

        return const SizedBox(

          width: LISTACUADRADA_ESPACIOS,
          height: LISTACUADRADA_ESPACIOS,

        );

      },

    );
  }
}
