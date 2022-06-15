import 'package:flutter/material.dart';
import 'imports.dart';

Widget checkBox(bool check){
  return   Row(

    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,

    children: <Widget>[

      Checkbox(
        activeColor: COLOR_ACCENT ,
        value: check,
        onChanged: (value) {


        },
      ),

      Container(
        
        child: textoSmall("kda")
      )

    ],
  );




}