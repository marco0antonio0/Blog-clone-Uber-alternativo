import 'dart:math';

import '../dB/db.dart';
import '../dB/db_users.dart';

class login_pass {
  login_pass._();
  static final login_pass instance = login_pass._();
  isTrueData(Map<String, String> data_) {
    for (var i = 0; i < usuarios.length; i++) {
      if (usuarios[i]['nome'] == data_['nome'] &&
          usuarios[i]['senha'] == data_['senha']) {
        return {'nome': data_['nome']};
      }
    }
  }

  //===================================
  Map<String, String?> data_ = {};
}

class back_dados {
  back_dados._();
  static final back_dados instance = back_dados._();

  int valorubrexnormal = 0;
  int valorubrexluxuoso = 0;
  sortearNome() {
    var i = sortear(ate: lista_nomes.length);
    return lista_nomes[i];
  }

  sortear({int ate = 50}) {
    Random random = new Random();
    int randomNumber = random.nextInt(ate);
    return randomNumber;
  }

  bool statusBTN = false;
  String? nome_get;
  consulta(nome) {
    int x = 0;
    for (int i = 0; i < nomes.length; i++) {
      if (nome.toLowerCase() == nomes[i].toLowerCase()) {
        nome_get = nomes[i];
        x++;
      }
    }
    if (x > 0) {
      return true;
    } else {
      return false;
    }
  }
}

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
