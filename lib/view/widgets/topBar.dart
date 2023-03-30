import 'package:flutter/material.dart';

import '../../model/model_widget.dart';

Widget Topbar(largura) {
  return Container(
      height: largura > 1100
          ? 120
          : largura > 750
              ? 90
              : 80,
      width: largura,
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.only(left: 70),
      color: Colors.black,
      child: Row(
        children: [
          Spacer(flex: 1),
          Container(
              margin: EdgeInsets.all(15),
              child: Image(image: AssetImage('Images/logo.png'))),
          Spacer(flex: 1),
          textPerson(text: 'Ubrexx', Color: Colors.white, fontSize: 30),
          Spacer(flex: 200),
        ],
      ));
}
