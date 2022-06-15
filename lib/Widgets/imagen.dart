import 'package:flutter_svg/flutter_svg.dart';

import '/Theme/constantes.dart';
import 'package:flutter/material.dart';

Widget imagenCuadrada(String imagen){
  return ClipRRect(
    borderRadius: BorderRadius.circular(FOTO_REDONDA_SIZE),
    child: SizedBox.fromSize(
      size: const Size.fromRadius(FOTO_REDONDA_SIZE),
      child: Image.asset(
          imagen,
          fit: BoxFit.cover),
    ),
  );
}

Widget imagenRedondaConBorde (String imagen, {double size = FOTO_REDONDA_SIZE}){

  return CircleAvatar(
    radius: size+2,
    backgroundColor: COLOR_ACCENT,
    child: CircleAvatar(
      radius: size,
      backgroundImage: AssetImage(imagen),
    ),
  );
}

Widget imagenRedonda (String imagen, {double size = FOTO_REDONDA_SIZE}){

  return CircleAvatar(

    radius: size,
    backgroundImage: AssetImage(imagen),
  );
}


Widget imagenPersonalizada(String imagen, {double heigth = 180, double width = double.infinity}){

  return Container(
    height: heigth,
    width: width,
    decoration: BoxDecoration(
      color: COLOR_ACCENT,
      borderRadius: BorderRadius.all(Radius.circular(RADIUS)),
      image: DecorationImage(

        image: AssetImage(imagen),
        //colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.9), BlendMode.dstATop),
        fit: BoxFit.cover,
      ),
    ),
  );
}


Widget imagenPersonalizadaAjustada(String imagen, {double heigth = 180, double width = double.infinity}){

  return Container(
    height: heigth,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(RADIUS)),
      image: DecorationImage(

        image: AssetImage(imagen),
        //colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.9), BlendMode.dstATop),
        fit: BoxFit.contain,
      ),
    ),
  );
}

Widget imagensvg(String imagen, {double heigth = 180, double width = double.infinity}){
  return Container(
    height: heigth,
    width: width,
    child: SvgPicture.asset(
      imagen,
      color: Colors.white,
    ),
  );
}