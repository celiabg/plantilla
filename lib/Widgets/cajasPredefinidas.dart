import '/Widgets/imports.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


Widget cajaFeelPro(){

  return Row(

    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,

    children: [

      ///Imagen
      imagenRedonda("assets/imagenes/perfil.png",size: 30),

      espacio(ESPACIO_PEQUENO),

      ///Textos
      Column(

        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          textoIndividualSinExpanded("Running con Sergio"),


          Row(

            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [

              textoCaptionSinExpanded("Sergio Peinado"),

              espacio(5),

              imagenRedonda("assets/imagenes/verificado.png",size: 4 )



            ],

          ),

          espacio(5),

          Row(

            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Icon(
                Icons.calendar_today_outlined,
                color: COLOR_SUBTEXT,
                size: SIZE_ICON_LISTFEELPRO,

              ),

              espacio(ESPACIO_PEQUENO),

              Text(
                  "22 de Septiembre - 2022",
                  overflow: TextOverflow.ellipsis,
                  maxLines: MAXLINES,
                  style: GoogleFonts.montserrat(
                    fontSize: TEXTOSSMALL_SIZE,
                    fontWeight: TEXTOSSMALL_WEIGHT,
                    color: COLOR_SUBTEXT,
                  )
              ),
            ],
          ),

          espacio(5),

          Container(



            child: Row(

              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [

                Container(

                  padding: EdgeInsets.only(left: 10, right: 10),
                  height: 15,
                  alignment: Alignment.center,

                  decoration: const BoxDecoration(

                    color: COLOR_ACCENT_HINT,
                    borderRadius: BorderRadius.all(Radius.circular(RADIUS)),

                  ),

                  child: Text(
                      "2 km",
                      overflow: TextOverflow.ellipsis,
                      maxLines: MAXLINES,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        fontSize: TEXTOSSMALL_SIZE,
                        fontWeight: TEXTOSSMALL_WEIGHT,
                        color: COLOR_FONDO,
                      )
                  ),

                ),

                espacio(5),

                Container(

                  padding: EdgeInsets.only(left: 10, right: 10),
                  height: 15,
                  alignment: Alignment.center,

                  decoration: const BoxDecoration(

                    color: COLOR_ACCENT_HINT,
                    borderRadius: BorderRadius.all(Radius.circular(RADIUS)),

                  ),

                  child: Text(
                      "Barcelona",
                      overflow: TextOverflow.ellipsis,
                      maxLines: MAXLINES,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        fontSize: TEXTOSSMALL_SIZE,
                        fontWeight: TEXTOSSMALL_WEIGHT,
                        color: COLOR_FONDO,
                      )
                  ),

                ),

                espacio(5),

                Container(

                  padding: EdgeInsets.only(left: 10, right: 10),
                  height: 15,
                  alignment: Alignment.center,

                  decoration: const BoxDecoration(

                    color: COLOR_ACCENT_HINT,
                    borderRadius: BorderRadius.all(Radius.circular(RADIUS)),

                  ),

                  child: Text(
                      "4,8",
                      overflow: TextOverflow.ellipsis,
                      maxLines: MAXLINES,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        fontSize: TEXTOSSMALL_SIZE,
                        fontWeight: TEXTOSSMALL_WEIGHT,
                        color: COLOR_FONDO,
                      )
                  ),

                ),



              ],
            ),
          ),

        ],

      ),






    ],
  );

}

Widget cajaTiempoFeelPro(){

  return Row(

    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,

    children: [

      Container(

        height: CAJADIAYHORA_ALTO,
        width: CAJADIAYHORA_ANCHO,

        decoration: const BoxDecoration(
          
          
          color: COLOR_HINT,

            borderRadius:BorderRadius.all(Radius.circular(RADIUS))
        ),

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            textoTituloSinExpanded("25"),
            textoSmallSinExpanded("SEPT")

          ],
        ),

      ),

      Container(

        height: CAJADIAYHORA_ALTO,
        width: CAJADIAYHORA_ANCHO,

        decoration: const BoxDecoration(


            color: COLOR_HINT,

            borderRadius:BorderRadius.all(Radius.circular(RADIUS))
        ),

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            textoTituloSinExpanded("18:00"),
            textoSmallSinExpanded("HORA")

          ],
        ),

      ),

      Container(

        height: CAJADIAYHORA_ALTO,
        width: CAJADIAYHORA_ANCHO,

        decoration: const BoxDecoration(


            color: COLOR_HINT,

            borderRadius:BorderRadius.all(Radius.circular(RADIUS))
        ),

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Row(

              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                textoTituloSinExpanded("45"),
                textoSmallSinExpanded("min")
                
              ],
            ),
            
            textoSmallSinExpanded("DURACIÓN")

          ],
        ),

      ),







    ],
  );

}