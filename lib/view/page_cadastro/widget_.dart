import 'package:flutter/material.dart';
import 'package:uber/model/model_widget.dart';
import 'package:uber/view/page_2/page.dart';

//================================================================
//   containerleft
class containerleft extends StatelessWidget {
  const containerleft({super.key});

  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;
    double r = largura > 1100
        ? 120
        : largura > 750
            ? 90
            : 80;
    double responsive_largura = largura * 0.45;
    return Container(
      height: altura - r,
      width: largura * 0.45,
      // color: Colors.red,
      child: Column(
        children: [
          Spacer(flex: 20),
          //============================================
          //  text >> campo de texto
          Container(
            height: 70,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.white10,
              border: Border.all(color: Colors.black.withOpacity(.5)),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(child: textPerson(text: 'campo de texto')),
          ),
          //============================================
          //  text nome
          Align(
              alignment: Alignment(-.8, 0),
              child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  // color: Colors.green,
                  child: textPerson(text: 'nome', fontSize: 25))),
          //============================================
          // textfield nome
          Container(
              height: 100,
              margin: EdgeInsets.only(left: 40, right: 100),
              // color: Colors.green,
              child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                              color: Colors.black.withOpacity(.5)))))),
          //============================================
          //  text senha
          Align(
              alignment: Alignment(-.8, 0),
              child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  // color: Colors.green,
                  child: textPerson(text: 'senha', fontSize: 25))),
          //============================================
          // textfield senha
          Container(
              height: 100,
              margin: EdgeInsets.only(left: 40, right: 100),
              // color: Colors.green,
              child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                              color: Colors.black.withOpacity(.5)))))),
          Spacer(flex: 10),
          BTN_cadastro(fn: () {}),
          //============================================
          Spacer(flex: 100),
          //============================================
        ],
      ),
    );
  }
}

//================================================================
//  containerRight
class containerRight extends StatelessWidget {
  const containerRight({super.key});

  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;
    double r = largura > 1100
        ? 120
        : largura > 750
            ? 90
            : 80;
    //===================
    double responsive_largura = largura * 0.55;
    return Container(
      height: altura - r,
      width: responsive_largura,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('Images/image_maps_background.png'),
              fit: BoxFit.fill)),
    );
  }
}

Widget BTN_cadastro({fn}) {
  return Align(
    alignment: Alignment(-.2, 0),
    child: InkWell(
      onTap: () => fn(),
      child: Container(
        child:
            Center(child: textPerson(text: 'cadastrar', Color: Colors.white)),
        height: 80,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [boxShadow()]),
      ),
    ),
  );
}
