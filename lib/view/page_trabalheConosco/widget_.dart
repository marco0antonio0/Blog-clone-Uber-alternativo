import 'package:flutter/material.dart';
import 'package:uber/model/model_widget.dart';
import 'package:uber/view/page_2/page.dart';
//          DEFAULT
//=======================================================================================
//  Contaienr Image Map

Widget containerRight(largura, altura) {
  double larg = (largura / 2);
  return Container(
    color: Colors.red,
    child: Column(
      children: [],
    ),
    width: largura > 1800 ? larg - 400 : larg - 200,
    height: 700,
  );
}
//=======================================================================================

//=======================================================================================
//  Contaienr Left
Widget containerLeft(largura, altura, setState) {
  return Container(
    color: Colors.green,
    //  alinhamento right / margem
    width: (largura / 2) - 100,
    height: 700,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [],
    ),
  );
}
