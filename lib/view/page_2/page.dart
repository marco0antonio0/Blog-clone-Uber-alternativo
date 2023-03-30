import 'package:flutter/material.dart';
import 'package:uber/controller/controller.dart';
import 'package:uber/view/page_2/widget_.dart';
import 'package:uber/view/widgets/topBar.dart';
//  widgets

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
            //=======================================================================================
            //  top bar
            Topbar(largura),
            SizedBox(height: altura * 0.02),
            //=======================================================================================
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
