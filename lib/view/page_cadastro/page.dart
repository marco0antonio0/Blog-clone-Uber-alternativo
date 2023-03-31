import 'package:flutter/material.dart';
import 'package:uber/controller/controller.dart';
import 'package:uber/view/page_cadastro/widget_.dart';
import 'package:uber/view/widgets/topBar.dart';

PassDados dados = PassDados.instance;
back_dados data = back_dados.instance;

class page_cadastro extends StatefulWidget {
  const page_cadastro({super.key});

  @override
  State<page_cadastro> createState() => _page_cadastroState();
}

class _page_cadastroState extends State<page_cadastro> {
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
            Container(
              child: Row(
                children: [
                  containerleft(),
                  containerRight(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
