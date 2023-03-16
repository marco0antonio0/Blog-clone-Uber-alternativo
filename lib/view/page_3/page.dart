import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uber/controller/controller.dart';
import 'package:uber/model/model_widget.dart';
import 'package:uber/view/page_2/page.dart';

PassDados dados = PassDados.instance;
back_dados data = back_dados.instance;

class Page_3 extends StatefulWidget {
  const Page_3({super.key});

  @override
  State<Page_3> createState() => _Page_3State();
}

class _Page_3State extends State<Page_3> {
  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;
    print(largura);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //=================================================
            //  top bar
            Container(
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
                    textPerson(
                        text: 'Ubrexx', Color: Colors.white, fontSize: 30),
                    Spacer(flex: 200),
                  ],
                )),
            SizedBox(height: altura * 0.02),
            Container(
                child: Row(
              children: [
                Spacer(flex: 40),
                containerLeft(largura, altura, setState),
                //=================================================
                containerRight(largura, altura),
                Spacer(flex: 100),
              ],
            )),
          ],
        ),
      ),
    );
  }
}

//          DEFAULT
//=================================================
//  Contaienr Image Map
Widget containerRight(largura, altura) {
  double larg = (largura / 2);
  return Container(
    child: Column(
      children: [
        Container(
            height: 80,
            color: Colors.black,
            child: Center(
                child: Text('Destino selecionado',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w100)))),
        Spacer(),
        Container(
            height: 80,
            color: Color(0xff85C4A2),
            child: Center(
                child: Text('Destino -->' + data.nome_get!,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w100)))),
      ],
    ),
    width: largura > 1800 ? larg - 400 : larg - 200,
    height: 700,
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('Images/Map.png'), fit: BoxFit.fitHeight)),
  );
}

//=================================================
//  Contaienr Left
Widget containerLeft(largura, altura, setState) {
  return Container(
    //color: Colors.red,
    //  alinhamento right / margem
    width: (largura / 2) - 100,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //===============================================
        Container(
            alignment: Alignment.centerLeft,
            height: 100,
            child: textPerson(text: 'Ubexx encontrado !!', fontSize: 50)),
        //===================================================
        //  dados do motorista
        Container(
            alignment: Alignment.centerLeft,
            child: textPerson(
                text: 'Aprox. -> 4min de voce',
                fontSize: 30,
                Color: Color(0xff47B074))),
        //===================================================
        Align(
            alignment: Alignment.centerLeft,
            child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(flex: 40),
                    Align(
                        alignment: Alignment(-0.8, 0),
                        child: textPerson(
                            text: 'Motorista: ' + data.sortearNome(),
                            fontSize: 25,
                            Color: Colors.white)),
                    Spacer(flex: 10),
                    Align(
                        alignment: Alignment(-0.8, 0),
                        child: textPerson(
                            text: 'Carro: ' + ' La Fiesta',
                            fontSize: 25,
                            Color: Colors.white)),
                    Spacer(flex: 100),
                  ],
                ),
                margin: EdgeInsets.only(top: 20),
                height: 250,
                width: 500,
                decoration: BoxDecoration(
                    color: Color(0xff85C4A2),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(150))))),
        //===================================================
        //  margin
        SizedBox(height: 20),
        //===================================================
        Align(
            alignment: Alignment.centerLeft,
            child: textPerson(text: 'Aguarde no local proximo', fontSize: 25)),
        //===================================================
        //  margin
        SizedBox(height: 20),
        //===================================================
        Align(
            alignment: Alignment.centerLeft,
            child: textPerson(text: 'Pagamento selecionado em :')),
        //===================================================
        cardPersoMetodoDePagamento(status: true, link: 'Images/ico_money.png'),
        //===================================================
        //  margin
        SizedBox(height: 20),
        //===================================================
        Row(
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: textPerson(text: 'Valor Total R\$: xx.xx')),
            SizedBox(width: 20),
            Image(image: AssetImage('Images/ico_money.png'))
          ],
        ),
      ],
    ),
  );
}
