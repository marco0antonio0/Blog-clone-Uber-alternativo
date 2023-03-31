import 'package:flutter/material.dart';
import 'package:uber/view/page_cadastro/page.dart';
import 'package:uber/view/page_login/page.dart';
import 'package:uber/view/page_seguranca/page.dart';

import '../../model/model_widget.dart';
import 'package:get/get.dart';

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
          Spacer(flex: 40),
          Align(
            alignment: Alignment(0, .3),
            child: InkWell(
                onTap: () {
                  Get.to(() => page_login());
                },
                child: textPerson(
                    text: 'Inicio',
                    Color: Colors.white,
                    FontWeight: FontWeight.w500)),
          ),
          Spacer(flex: 5),
          Align(
            alignment: Alignment(0, .3),
            child: InkWell(
                onTap: () {
                  Get.to(() => page_seguranca());
                },
                child: textPerson(
                    text: 'Segurança de clientes',
                    Color: Colors.white,
                    FontWeight: FontWeight.w500)),
          ),
          Spacer(flex: 5),
          Align(
            alignment: Alignment(0, .3),
            child: InkWell(
                onTap: () {
                  Get.to(() => page_cadastro());
                },
                child: textPerson(
                    text: 'Se cadastre',
                    Color: Colors.white,
                    FontWeight: FontWeight.w500)),
          ),
          Spacer(flex: 100),
        ],
      ));
}
