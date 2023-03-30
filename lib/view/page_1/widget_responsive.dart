import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../model/model_widget.dart';
import 'package:uber/view/page_2/page.dart';

//=======================================================================================
//  Contaienr Image Map
Widget containerRight_resize(largura, altura) {
  return Container(
      width: largura,
      height: largura > 850 ? 300 : 250,
      child: Center(
        child: Container(
          height: 300,
          width: largura > 800
              ? largura - 200
              : largura > 690
                  ? largura - 100
                  : largura - 50,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('Images/Map.png'),
          )),
        ),
      ));
}

//=================================================
//  container Left resize
Widget containerLeft_resize(largura, altura) {
  return Container(
    //  alinhamento left / margem
    alignment: Alignment.centerLeft,
    width: largura > 800 ? largura - 200 : largura - 100,

    child: Container(
      //  margem do container
      width: largura > 1100
          ? (largura / 2) - 100
          : largura > 810
              ? (largura / 2) - 50
              : 700,
      child: Column(
        children: [
          //=================================================
          //  margin
          SizedBox(height: altura * 0.02),
          //=================================================
          // text
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Text(
                'Qual seu nome?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              margin: EdgeInsets.only(bottom: 20),
            ),
          ),
          //=================================================
          // text . textfield
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
                //  largura do textField
                width: largura > 810 ? largura - 200 : 300,
                child: TextField(
                  onChanged: (Value) => dados.nome = Value,
                  decoration: InputDecoration(
                      label: Text('digite '),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      filled: true,
                      fillColor: Colors.white),
                )),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Text(
                'qual seu destino?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              margin: EdgeInsets.only(bottom: 20),
            ),
          ),
          //=================================================
          // text . textfield
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
                //  largura do textField
                width: largura > 810 ? largura - 200 : 300,
                child: TextField(
                  onChanged: (Value) => dados.nome = Value,
                  decoration: InputDecoration(
                      label: Text('digite '),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      filled: true,
                      fillColor: Colors.white),
                )),
          ),
          //=================================================
          //  margin
          SizedBox(height: altura * 0.3),
          //=================================================
          //  container . buttom
          btn_next(fn: () {
            dados.isEmpytnome();
            dados.statusNome ? Get.to(() => Page_2()) : null;
          })
        ],
      ),
    ),
  );
}
