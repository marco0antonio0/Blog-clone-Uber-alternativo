import 'package:flutter/material.dart';
import 'package:uber/controller/controller.dart';
import 'package:uber/view/page_login/widget_.dart';
import 'package:uber/view/widgets/topBar.dart';

PassDados dados = PassDados.instance;
back_dados data = back_dados.instance;

class page_login extends StatefulWidget {
  const page_login({super.key});

  @override
  State<page_login> createState() => _page_loginState();
}

class _page_loginState extends State<page_login> {
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
                //=================================================
                //  margin
                Spacer(flex: 100),
                //=================================================
                // container esquerdo
                containerLeft(largura, altura, setState),
                //=================================================
                //  margin
                Spacer(flex: 50),
                //=================================================
                // container direito
                containerRight(largura, altura),
                //=================================================
                //  margin
                Spacer(flex: 100),
                //=================================================
              ],
            )),
          ],
        ),
      ),
    );
  }
}
