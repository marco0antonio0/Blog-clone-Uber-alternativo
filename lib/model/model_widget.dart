//=================================================
//  Personalização
import 'package:flutter/material.dart';
//=======================================================
//=======================================================
//=======================================================

boxShadow() {
  return BoxShadow(
    color: Colors.black.withOpacity(0.5),
    blurRadius: 4,
    offset: Offset(4, 8), // Shadow position
  );
}

//=======================================================
//=======================================================
//=======================================================
//=======================================================
Widget btn_next({text = 'Essa pessoa -->', fn}) {
  return Align(
      alignment: Alignment.centerLeft,
      child: InkWell(
          //  FN click buttom
          onTap: () {
            fn();
          },
          child: Container(
              decoration:
                  BoxDecoration(color: Colors.black, boxShadow: [boxShadow()]),
              height: 70,
              width: 300,
              child: Center(
                  child: Text(text, style: TextStyle(color: Colors.white))))));
}

//=======================================================
//=======================================================
//=======================================================
//=======================================================
Text textPerson(
    {fontSize = 20,
    text = '',
    FontWeight: FontWeight.w100,
    Color = Colors.black}) {
  return Text(
    text,
    style:
        TextStyle(fontSize: fontSize * 1, fontWeight: FontWeight, color: Color),
  );
}

/* Ola,' + 'Fulano' + 'seja bem vindo */

//=======================================================
//=======================================================
//=======================================================
//=======================================================
Widget cardPerson({nome = 'Ubrexx', valor = "xx.xx", status = true, fn}) {
  return Align(
    alignment: Alignment(-1, 0),
    child: InkWell(
      onTap: () => fn(),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        height: 120,
        width: 400,
        decoration: BoxDecoration(
            color:
                status ? Color(0xffFBFBFB) : Color(0xffDDDDDD).withOpacity(0.9),
            boxShadow: [boxShadow()]),
        child: Row(
          children: [
            //==================================================================
            Expanded(
                flex: 100,
                child: Container(
                    margin: EdgeInsets.all(0),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('Images/logo.png'),
                              opacity: status ? 1.0 : 0.5)),
                    ))),
            //==================================================================
            Expanded(
                flex: 100,
                child: Container(
                    margin: EdgeInsets.all(5),
                    child: Center(
                      child: textPerson(
                          text: nome,
                          Color: status
                              ? Colors.black
                              : Colors.black.withOpacity(0.5)),
                    ))),
            //==================================================================
            Expanded(
                flex: 100,
                child: Container(
                    margin: EdgeInsets.all(0),
                    child: Center(
                        child: textPerson(
                            text: 'R\$:' + valor,
                            Color: status
                                ? Colors.black
                                : Colors.black.withOpacity(0.5))))),
          ],
        ),
      ),
    ),
  );
}

//=======================================================
//=======================================================
//=======================================================
//=======================================================
Widget cardPersoMetodoDePagamento(
    {nome = 'dinheiro', link = 'Images/icon_dinheiro.png', status = true, fn}) {
  return Align(
    alignment: Alignment(-1, 0),
    child: InkWell(
      onTap: () => fn(),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Container(
          height: 100,
          width: 400,
          decoration: BoxDecoration(
              color: status
                  ? Color(0xff47B074)
                  : Color(0xffBAD0C4).withOpacity(0.9),
              boxShadow: [boxShadow()]),
          child: Row(
            children: [
              //==================================================================
              Expanded(
                  flex: 100,
                  child: Container(
                      margin: EdgeInsets.all(0),
                      child: Center(
                        child: textPerson(
                            text: nome,
                            Color: status
                                ? Colors.black
                                : Colors.black.withOpacity(0.5)),
                      ))),
              //==================================================================
              Expanded(
                  flex: 30,
                  child: Container(
                    decoration: BoxDecoration(
                        color: status
                            ? Color.fromARGB(209, 37, 25, 25)
                            : Color(0xffBAD0C4).withOpacity(0.1),
                        image: DecorationImage(
                            image: AssetImage(link),
                            opacity: status ? 1.0 : 0.5)),
                    margin: EdgeInsets.all(0),
                  )),
            ],
          ),
        ),
      ),
    ),
  );
}
//=======================================================
//=======================================================
//=======================================================
//=======================================================
