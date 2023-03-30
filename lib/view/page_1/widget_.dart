import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../model/model_widget.dart';
import 'package:uber/view/page_2/page.dart';

//          DEFAULT
//=======================================================================================
//  Contaienr Image Map
Widget containerRight(largura, altura) {
  return Container(
      width: largura > 1281 ? largura / 2 : 500,
      height: 700,
      child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('Images/Map.png'),
                  fit: BoxFit.fitHeight))));
}

//=======================================================================================
//  Contaienr Left
Widget containerLeft(largura, altura, setState) {
  return Container(
    //  alinhamento right / margem
    alignment: Alignment.centerRight,
    width: (largura / 2) - 100,
    child: Container(
      //  margem do container
      width: largura > 1100 ? (largura / 2) - 100 : (largura / 2) - 50,
      child: Column(
        children: [
          //=================================================
          //margin height
          SizedBox(height: altura * 0.1),
          //=================================================
          // text
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Text(
                'Qual seu nome ?',
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
                width: largura > 1100 ? 500 : 400,
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
          Container(
            height: 20,
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
                  width: largura > 1100 ? 500 : 400,
                  child: TextField(
                      onChanged: (Value) {
                        setState(() {});
                        data.statusBTN = data.consulta(Value);
                      },
                      decoration: InputDecoration(
                          label: Text('digite o nome do bairro ex: souza'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          filled: true,
                          fillColor: Colors.white)))),
          //==============================================================
          data.statusBTN
              ? karde2(largura,
                  nome: "destino selecionou -> " + (data.nome_get!), fn: () {})
              : Container(),
          //==============================================================

          //=================================================
          //  margin
          SizedBox(height: altura * 0.3),
          //=================================================
          //  container . buttom
          btn_next(fn: () {
            dados.isEmpytnome();
            dados.statusNome && data.statusBTN ? Get.to(() => Page_2()) : null;
          })
        ],
      ),
    ),
  );
}
