import 'package:flutter/material.dart';
import 'package:uber/model/model_widget.dart';
import 'package:uber/view/page_2/page.dart';
//          DEFAULT
//=======================================================================================
//  Contaienr Image Map

Widget containerRight(largura, altura) {
  double larg = (largura / 2);
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('Images/Rectangle 36.png'))),
    width: largura > 1800 ? larg - 400 : larg - 200,
    height: 700,
  );
}
//=======================================================================================

//=======================================================================================
//  Contaienr Left
Widget containerLeft(largura, altura, setState) {
  return Container(
    //  alinhamento right / margem
    width: (largura / 2) - 0,
    height: 700,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //==============================================================
        // bloco 1
        Spacer(flex: 50),
        Container(
          height: 70,
          color: Colors.black,
          child: Center(
              child: textPerson(
                  text: 'Sua segurança é nossa prioridade máxima.',
                  Color: Colors.white,
                  fontSize: 35)),
        ),
        Container(height: 15, color: Colors.green),
        Spacer(flex: 25),
        //==============================================================
        //  bloco 2
        Container(
            child: Center(
              child: Text(
                'Quais são as vantagens da Ubrexx?',
                style: TextStyle(fontSize: 35),
              ),
            ),
            margin: EdgeInsets.symmetric(vertical: 1)),
        //==============================================================
        //  bloco 3
        Spacer(flex: 1),
        Expanded(
            flex: 200,
            child: Container(
                child: Row(children: [
                  //bloco 3.1
                  Expanded(
                      flex: 100,
                      child: Container(
                        child: Center(
                          child: Text(
                            'Entre as vantagens, ubrexx oferece descontos em postos de gasolina, academias, faculdades, cursos de idioma, entre outras opções. Além disso, disponibiliza recursos exclusivos no app, como o suporte preferencial por telefone e opções de prioridade para viagens em aeroportos.',
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      )),
                  Spacer(flex: 20),
                  //==============================================================
                  //bloco 3.2
                  Expanded(
                      flex: 100,
                      child: Container(
                        child: Center(
                          child: Text(
                            'Ubrexx conta com diferentes modalidades de verificação de parceiros e usuários para proporcionar uma experiência tranquila para todos. os parceiros passam por um processo de cadastro de várias etapas antes de aceitar a primeira viagem que envolve checagem de apontamentos criminais e análise da CNH.',
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      )),
                ]),
                margin: EdgeInsets.symmetric(vertical: 5))),
        //==============================================================
        // bloco 4
        Align(
            alignment: Alignment.centerLeft,
            child: Container(
                child: Text('FAÇA SUA PESQUISA DO NOSSO FUNCIONARIO:',
                    style: TextStyle(fontSize: 22)))),
        Spacer(flex: 3),
        Container(
            margin: EdgeInsets.only(right: 250),
            color: Colors.black,
            child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.black,
                    label: textPerson(text: '  |', Color: Colors.white)))),
        Spacer(flex: 10),

        InkWell(
            onTap: () {},
            child: textPerson(
                text: 'pesquise o motorista ->',
                Color: Colors.white,
                FontWeight: FontWeight.w500)),
      ],
    ),
  );
}
