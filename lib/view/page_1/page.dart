import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uber/controller/controller.dart';
import 'package:uber/model/model_widget.dart';
import 'package:uber/view/page_2/page.dart';

back_dados data = back_dados.instance;
PassDados dados = PassDados.instance;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;
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
              child: largura > 1000
                  ? Row(
                      children: [
                        Spacer(flex: 100),
                        containerLeft(largura, altura, setState),
                        //=================================================
                        containerRight(largura, altura), Spacer(flex: 100),
                      ],
                    )
                  : Column(
                      children: [
                        containerRight_resize(largura, altura),
                        //=================================================
                        containerLeft_resize(largura, altura)
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

//=================================================
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

//          DEFAULT
//=================================================
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

//=================================================
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
                          label: Text('digite '),
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

Widget karde2(largura, {nome = "", fn}) {
  return InkWell(
    child: Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
            color: Color(0xff47B074),
            borderRadius: BorderRadius.circular(50),
            boxShadow: [boxShadow()]),
        width: largura > 1100 ? 500 : 400,
        child: Center(child: textPerson(text: nome, Color: Colors.white)),
        height: 70,
      ),
    ),
    onTap: () {
      fn();
    },
  );
}
