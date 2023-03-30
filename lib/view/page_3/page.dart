import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uber/controller/controller.dart';
import 'package:uber/model/model_widget.dart';
import 'package:uber/view/page_2/page.dart';
import 'package:uber/view/page_3/widget_.dart';
import 'package:uber/view/widgets/topBar.dart';

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
            //=======================================================================================
            //  top bar
            Topbar(largura),
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
