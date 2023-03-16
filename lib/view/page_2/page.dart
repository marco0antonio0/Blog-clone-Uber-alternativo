import 'package:flutter/material.dart';
import 'package:uber/controller/controller.dart';
import 'package:uber/model/model_widget.dart';
import 'package:uber/view/page_1/page.dart';
import 'package:get/get.dart';
import 'package:uber/view/page_3/page.dart';

back_dados data = back_dados.instance;
PassDados dados = PassDados.instance;

class Page_2 extends StatefulWidget {
  Page_2({
    super.key,
  });

  @override
  State<Page_2> createState() => _Page_2State();
}

class _Page_2State extends State<Page_2> {
  TextEditingController controller = TextEditingController();

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
                child: Container(
                    margin: EdgeInsets.all(15),
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
                    ))),
            SizedBox(height: altura * 0.02),
            //==========================================
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(flex: largura > 1100 ? 40 : 5),
                containerLeft(largura, altura, setState),
                //=================================================
                largura > 1100 ? Container() : Spacer(flex: 5),
                largura > 950
                    ? containerRight(
                        largura,
                        altura,
                      )
                    : Container(),
                largura > 950
                    ? Spacer(flex: largura > 1100 ? 100 : 5)
                    : Container(),
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
                child: Text('Destino --> ' + data.nome_get!,
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
    //  alinhamento right / margem
    width: (largura / 2) - 100,
    child: Column(
      children: [
        //===============================================
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              Container(
                  alignment: Alignment.centerLeft,
                  height: 50,
                  child: textPerson(
                      text: 'Ola, ' + dados.nome! + ',seja bem vindo',
                      fontSize: 30)),
              Container(
                  alignment: Alignment.centerLeft,
                  child: textPerson(text: 'valores')),
            ],
          ),
        ),
        //===============================================
        Container(
          width: largura,
          margin: EdgeInsets.symmetric(horizontal: 5),
          child: Column(children: [
            //============================================
            //  BTN
            cardPerson(
                nome: 'Ubrexx',
                valor: "${data.sortear(ate: 30)}",
                status: dados.status1[0],
                fn: () {
                  dados.statusFunction1(0);
                  setState(() {});
                }),
            cardPerson(
                nome: 'Ubrexx\nLuxuoso',
                valor: "${data.sortear(ate: 60)}",
                status: dados.status1[1],
                fn: () {
                  dados.statusFunction1(1);
                  setState(() {});
                }),
          ]),
        ),
        //===============================================
        Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: Column(children: [
              Container(
                  height: 50,
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child:
                          textPerson(text: 'Selecione o metodo de pagamento'))),
              cardPersoMetodoDePagamento(
                  nome: 'dinheiro',
                  link: 'Images/ico_money.png',
                  status: dados.status[0],
                  fn: () {
                    dados.statusFunction(0);
                    setState(() {});
                  }),
              cardPersoMetodoDePagamento(
                  nome: 'cartão',
                  link: 'Images/ico_creditCard.png',
                  status: dados.status[1],
                  fn: () {
                    dados.statusFunction(1);
                    setState(() {});
                  }),
            ])),
        //===============================================
        SizedBox(height: 20),
        //===============================================
        btn_next(text: 'Solicitar uber -->', fn: () => Get.to(() => Page_3()))
      ],
    ),
  );
}
