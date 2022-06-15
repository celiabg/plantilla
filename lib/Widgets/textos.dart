import '/Theme/constantes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// TEXTOS TÍTULO ///////////////////////////////////////////////////////////////
Widget textoTitulo(String texto, {double width = double.infinity, TextAlign textAlign = TextAlign.start, int maxlines = MAXLINES}){

  return Expanded(
    child: Text(
        texto,
        overflow: TextOverflow.ellipsis,
        maxLines: maxlines,
        style: const TextStyle(
          fontFamily: "Gilroy",
          fontSize: TEXTO_TITULO_SIZE,
          fontWeight: TEXTO_TITULO_WEIGHT,
          color: COLOR_TEXT
        )
    )
  );

}

Widget textoTituloCentro(String texto, {double width = double.infinity, Color color = COLOR_TEXT, TextAlign textAlign = TextAlign.start, int maxlines = MAXLINES}){

  return Center(

    child: Text(
        texto,
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        maxLines: maxlines,
        style: TextStyle(
          fontFamily: "Gilroy",
          fontSize: TEXTO_TITULO_SIZE,
          fontWeight: TEXTO_TITULO_WEIGHT,
          color: color,
        )
    ),
  );

}

Widget textoTituloSinExpanded(String texto, {double width = double.infinity, TextAlign textAlign = TextAlign.start, int maxlines = MAXLINES}){

  return Text(
      texto,
      overflow: TextOverflow.ellipsis,
      maxLines: maxlines,
      style: const TextStyle(
        fontFamily: "Gilroy",
        fontSize: TEXTO_TITULO_SIZE,
        fontWeight: TEXTO_TITULO_WEIGHT,
        color: COLOR_TEXT,
      )
  );

}



// TEXTOS SUBTÍTULO ////////////////////////////////////////////////////////////
Widget textoSubitulo(String texto, {double width = double.infinity, Color color: COLOR_TEXT}){

  return Expanded(
      child: Text(
          texto,
          overflow: TextOverflow.ellipsis,
          maxLines: MAXLINES,
          style:  TextStyle(
            fontFamily: "Gilroy",
            fontSize: TEXTOSUBTITULO_SIZE,
            fontWeight: TEXTOSUBTITULO_WEIGHT,
            color: color,
          )
      )
  );

}

Widget textoSubituloSinExpanded(String texto, {double width = double.infinity, Color color: COLOR_TEXT}){

  return Text(
      texto,
      overflow: TextOverflow.ellipsis,
      maxLines: MAXLINES,
      style:  TextStyle(
        fontFamily: "Gilroy",
        fontSize: TEXTOSUBTITULO_SIZE,
        fontWeight: TEXTOSUBTITULO_WEIGHT,
        color: color,
      )
  );

}



// TEXTOS BODY /////////////////////////////////////////////////////////////////
Widget textoIndividual(String texto, {double width = double.infinity, Color color: COLOR_TEXT}){

  return Expanded(
      child: Text(
          texto,
          overflow: TextOverflow.ellipsis,
          maxLines: MAXLINES,
          style:  TextStyle(
            fontFamily: "Gilroy",
            fontSize: TEXTOINDIVIDUAL_SIZE,
            fontWeight: TEXTOINDIVIDUAL_WEIGHT,
            color: color,
          )
      )
  );

}

Widget textoIndividualSinExpanded(String texto, {double width = double.infinity, Color color: COLOR_TEXT}){

  return Text(
      texto,
      overflow: TextOverflow.ellipsis,
      maxLines: MAXLINES,
      style:  TextStyle(
        fontFamily: "Gilroy",
        fontSize: TEXTOINDIVIDUAL_SIZE,
        fontWeight: TEXTOINDIVIDUAL_WEIGHT,
        color: color,
      )
  );

}

Widget textoBody(String texto, {double width = double.infinity, int maxlines = MAXLINES, Color color = COLOR_TEXT}){

  return Expanded(
      child: Text(
          texto,
          overflow: TextOverflow.ellipsis,
          maxLines: maxlines,
          style:  TextStyle(
            fontFamily: "Gilroy",
            fontSize: TEXTO_BODY_SIZE,
            fontWeight: TEXTOBODY_WEIGHT,
            color: color,
          )
      )
  );

}

Widget textoBodySinExpanded(String texto, {double width = double.infinity, int maxlines = MAXLINES, Color color = COLOR_TEXT}){

  return Text(
      texto,
      overflow: TextOverflow.ellipsis,
      maxLines: maxlines,
      style:  TextStyle(
        fontFamily: "Gilroy",
        fontSize: TEXTO_BODY_SIZE,
        fontWeight: TEXTOBODY_WEIGHT,
        color: color,
      )
  );

}

Widget textoBodyNegrita(String texto, {double width = double.infinity}){

  return Expanded(
      child: Text(
          texto,
          overflow: TextOverflow.ellipsis,
          maxLines: MAXLINES,
          style: const TextStyle(
            fontFamily: "Gilroy",
            fontSize: TEXTOBODYNEGRITA_SIZE,
            fontWeight: TEXTOBODYNEGRITA_WEIGHT,
            color: COLOR_TEXT,
          )
      )
  );

}

Widget textoBodyNegritaSinExpanded(String texto, {double width = double.infinity}){

  return Text(
      texto,
      overflow: TextOverflow.ellipsis,
      maxLines: MAXLINES,
      style: const TextStyle(
        fontFamily: "Gilroy",
        fontSize: TEXTOBODYNEGRITA_SIZE,
        fontWeight: TEXTOBODYNEGRITA_WEIGHT,
        color: COLOR_TEXT,
      )
  );

}


// TEXTOS CAPTION //////////////////////////////////////////////////////////////
Widget textoCaption(String texto, {double width = double.infinity, }){

  return Expanded(
      child: Text(
          texto,
          overflow: TextOverflow.ellipsis,
          maxLines: MAXLINES,
          style: const TextStyle(
            fontFamily: "Gilroy",
            fontSize: TEXTOCAPTION_SIZE,
            fontWeight: TEXTOCAPTION_WEIGHT,
            color: COLOR_SUBTEXT,
          )
      )
  );

}

Widget textoCaptionSinExpanded(String texto, {double width = double.infinity,int maxlines = MAXLINES }){

  return Text(
      texto,
      overflow: TextOverflow.ellipsis,
      maxLines: maxlines,
      style: const TextStyle(
        fontFamily: "Gilroy",
        fontSize: TEXTOCAPTION_SIZE,
        fontWeight: TEXTOCAPTION_WEIGHT,
        color: COLOR_SUBTEXT,
      )
  );

}

Widget textoCaptionBold(String texto, {double width = double.infinity}){

  return Expanded(
      child: Text(
          texto,
          overflow: TextOverflow.ellipsis,
          maxLines: MAXLINES,
          style: const TextStyle(
            fontFamily: "Gilroy",
            fontSize: TEXTOCAPTIONBOLD_SIZE,
            fontWeight: TEXTOCAPTIONBOLD_WEIGHT,
            color: COLOR_SUBTEXT,
          )
      )
  );

}

Widget textoCaptionBoldSinExpanded(String texto, {double width = double.infinity}){

  return Text(
      texto,
      overflow: TextOverflow.ellipsis,
      maxLines: MAXLINES,
      style: const TextStyle(
        fontFamily: "Gilroy",
        fontSize: TEXTOCAPTIONBOLD_SIZE,
        fontWeight: TEXTOCAPTIONBOLD_WEIGHT,
        color: COLOR_SUBTEXT,
      )
  );

}

Widget textoSmall(String texto, {double width = double.infinity, Color color = COLOR_SUBTEXT, }){

  return Expanded(
      child: Text(
          texto,
          overflow: TextOverflow.ellipsis,
          maxLines: MAXLINES,
          style: const TextStyle(
            fontFamily: "Gilroy",
            fontSize: TEXTOSSMALL_SIZE,
            fontWeight: TEXTOSSMALL_WEIGHT,
            color: COLOR_SUBTEXT,
          )
      )
  );

}

Widget textoSmallSinExpanded(String texto, {double width = double.infinity, Color color = COLOR_SUBTEXT,int maxlines = MAXLINES }){

  return Text(
      texto,
      overflow: TextOverflow.ellipsis,
      maxLines: maxlines,
      style: TextStyle(
        fontFamily: "Gilroy",
        fontSize: TEXTOSSMALL_SIZE,
        fontWeight: TEXTOSSMALL_WEIGHT,
        color: color,
      )
  );

}

Widget textoSmallCentro(String texto, {double width = double.infinity, Color color = COLOR_SUBTEXT, }){

  return Center(
    child: Text(
        texto,
        overflow: TextOverflow.ellipsis,
        maxLines: MAXLINES,
        style:  TextStyle(
          fontFamily: "Gilroy",
          fontSize: TEXTOSSMALL_SIZE,
          fontWeight: TEXTOSSMALL_WEIGHT,
          color: color,
        )
    ),
  );

}

Widget textoSubituloSinExpandedCentro(String texto, {double width = double.infinity, Color color: COLOR_TEXT}){

  return Center(
     child: Text(
          texto,
          overflow: TextOverflow.ellipsis,
          maxLines: MAXLINES,
          style:  TextStyle(
            fontFamily: "Gilroy",
            fontSize: TEXTOSUBTITULO_SIZE,
            fontWeight: TEXTOSUBTITULO_WEIGHT,
            color: color,
          )
      ),
  );

}

Widget textoBodySinExpandedCentro(String texto, {double width = double.infinity, int maxlines = MAXLINES, Color color = COLOR_TEXT}){

  return Center(
    child: Text(
        texto,
        overflow: TextOverflow.ellipsis,
        maxLines: maxlines,
        style:  TextStyle(
          fontFamily: "Gilroy",
          fontSize: TEXTO_BODY_SIZE,
          fontWeight: TEXTOBODY_WEIGHT,
          color: color,
        )
    ),
  );

}