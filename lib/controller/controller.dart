import 'package:flutter/material.dart';

class PassDados {
  PassDados._();
  static final PassDados instance = PassDados._();

  //==========================
  //
  //  status btn metodo de pagto
  var status = [true, true];
  statusFunction(cont) {
    status[cont] = true;
    for (int i = 0; i < 2; i++) {
      if (i != cont) {
        status[i] = false;
      }
    }
    return status[cont];
  }
  //==========================

  //==========================
  //
  //  status btn metodo de pagto
  var status1 = [true, true];
  statusFunction1(cont) {
    status1[cont] = true;
    for (int i = 0; i < 2; i++) {
      if (i != cont) {
        status1[i] = false;
      }
    }
    return status1[cont];
  }

  //==========================
  String? nome = '';
  var statusNome;
  isEmpytnome() => nome!.length > 0 ? statusNome = true : statusNome = false;

  // instancia do banco
}
