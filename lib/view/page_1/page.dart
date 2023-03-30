import 'package:flutter/material.dart';
import 'package:uber/controller/controller.dart';
import 'package:uber/view/page_1/widget_.dart';
import '../widgets/topBar.dart';
import 'widget_responsive.dart';

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
        //=======================================================================================
        //  top bar
        Topbar(largura),
        //=======================================================================================
        SizedBox(height: altura * 0.02),
        //=======================================================================================
        //          divisão de bloco
        Container(
          width: largura,
          child: largura > 1000
              ? Row(
                  children: [
                    Spacer(flex: 100),
                    containerLeft(largura, altura, setState),
                    //=================================================
                    containerRight(largura, altura), Spacer(flex: 100),
                  ],
                )
              //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
              : Column(children: [
                  containerRight_resize(largura, altura),
                  //=================================================
                  containerLeft_resize(largura, altura)
                ]),
          //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
        )
      ],
    )));
  }
}
