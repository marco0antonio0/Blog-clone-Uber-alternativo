import 'package:flutter/material.dart';
import 'package:uber/controller/controller.dart';
import 'package:uber/model/model_widget.dart';
import 'package:get/get.dart';
import 'package:uber/view/page_1/page.dart';
import 'package:uber/view/page_cadastro/page.dart';

login_pass instance = login_pass.instance;

Widget BTN_login({fn}) {
  return Center(
    child: InkWell(
      onTap: () => fn(),
      child: Container(
          child: Center(
            child: textPerson(text: 'Login', Color: Colors.white),
          ),
          width: 300,
          height: 70,
          decoration: BoxDecoration(
              boxShadow: [boxShadow()],
              color: Colors.black,
              borderRadius: BorderRadius.circular(40))),
    ),
  );
}

class ConteinerLogin extends StatefulWidget {
  const ConteinerLogin({super.key});

  @override
  State<ConteinerLogin> createState() => _ConteinerLoginState();
}

class _ConteinerLoginState extends State<ConteinerLogin> {
  final controller_nome = TextEditingController();
  final controller_senha = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;
    double responsive_altura = largura > 1100
        ? 120
        : largura > 750
            ? 90
            : 80;
    double responsive_sizeContainer = 700;
    if (largura < 850) responsive_sizeContainer -= 100;
    if (largura < 650) responsive_sizeContainer -= 30;

    return Container(
      height: altura - responsive_altura,
      width: largura,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('Images/image_maps_background.png'),
              fit: BoxFit.fill)),
      //===================================
      //  contaienr data
      child: Center(
        child: Container(
          width: responsive_sizeContainer,
          height: responsive_sizeContainer - 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Column(
            children: [
              //  Text Login page
              Expanded(
                  flex: 100,
                  child: Container(
                    // color: Colors.red,
                    margin: EdgeInsets.symmetric(vertical: 0),
                    child: Center(
                      child: textPerson(text: 'Login Page', fontSize: 30),
                    ),
                  )),
              //==========================================================================
              //  Text nome
              Expanded(
                  flex: 30,
                  child: Container(
                    // color: Colors.blue,
                    margin: EdgeInsets.symmetric(vertical: 0),
                    child: Align(
                      alignment: Alignment(-.8, 0),
                      child: textPerson(text: 'nome'),
                    ),
                  )),
              //==========================================================================
              //  Textfield nome
              Expanded(
                  flex: 70,
                  child: Container(
                    // color: Colors.red,
                    margin: EdgeInsets.only(left: 40, right: 80),
                    child: TextField(
                      controller: controller_nome,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.5)))),
                    ),
                  )),
              //==========================================================================
              //  Text senha
              Expanded(
                  flex: 30,
                  child: Container(
                    // color: Colors.blue,
                    margin: EdgeInsets.symmetric(vertical: 0),
                    child: Align(
                      alignment: Alignment(-.8, 0),
                      child: textPerson(text: 'senha'),
                    ),
                  )),
              //==========================================================================
              //  Textfield senha
              Expanded(
                  flex: 70,
                  child: Container(
                    // color: Colors.red,
                    margin: EdgeInsets.only(left: 40, right: 80),
                    child: TextField(
                      controller: controller_senha,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.5)))),
                    ),
                  )),
              //  BTN cadastro
              Expanded(
                  flex: 20,
                  child: Container(
                    // color: Colors.red,
                    margin: EdgeInsets.symmetric(vertical: 0),
                    child: Align(
                      alignment: Alignment(-.8, 0),
                      child: TextButton(
                          onPressed: () {
                            Get.to(() => page_cadastro());
                          },
                          child: textPerson(
                              text: 'cadastro', Color: Colors.black45)),
                    ),
                  )),
              //==========================================================================
              //  BTN Login
              Expanded(
                  flex: 100,
                  child: Container(
                      // color: Colors.red,
                      margin: EdgeInsets.symmetric(vertical: 0),
                      child: BTN_login(fn: () {
                        try {
                          Map<String, String?> data_ = instance.isTrueData({
                            'nome': controller_nome.text,
                            'senha': controller_senha.text
                          });
                          if (!data_.isEmpty) {
                            instance.data_ = data_;
                            Get.to(() => Home());
                          }
                        } catch (e) {}
                      }))),
              //==========================================================================
            ],
          ),
        ),
      ),
    );
  }
}
