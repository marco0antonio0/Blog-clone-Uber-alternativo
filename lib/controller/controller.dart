import 'dart:math';

class back_dados {
  back_dados._();
  static final back_dados instance = back_dados._();

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

final nomes = [
  "Cidade Velha",
  "Campina",
  "Reduto",
  "Umarizal",
  "Telegrafo",
  "Sacramenta",
  "Pedreira",
  "Marco",
  "Souza",
  "Marambaia",
  "Canudos",
  "Fátima",
  "São Brás",
  "Nazaré",
  "Batista Campos",
  "Jurunas",
  "Condor",
  "Guamá",
  "Terra Firme",
  "Cremação",
  "Val de Cães",
  "Miramar",
  "Pratinha",
  "Tapanã",
  "Benguí",
  "Maracangalha",
  "Barreiro",
  "Universitário",
  "Curió Utínga",
  "Aurá",
  "Castanheira",
  "Águas Lindas",
  "Guanabara",
  "São Clemente",
  "Parque Guajará",
  "Tenoné",
  "Águas Negras",
  "Maracacuera",
  "Parque Verde",
  "Cruzeiro",
  "Ponta Grossa",
  "Mangueirão",
  "Cabanagem",
  "Campina de Icoaraci",
  "Paracuri",
  "Agulha",
  "Una",
  "Coqueiro",
  "Cruzeiro",
  "São João do Outeiro",
  "Itaiteua",
  "Água Negra",
  "Maracajá",
  "Vila",
  "Praia Grande",
  "Farol",
  "Mangueiras",
  "São Francisco",
  "Caranamduba",
  "Marahu",
  "Paraíso",
  "Baia do Sol",
  "Sucurijuquara",
  "Caruara",
  "Bonfim",
  "Ariramba",
  "Porto Arthur",
  "Murubira",
  "Chapéu Virado",
  "Aeroporto"
];

final lista_nomes = [
  "Abel",
  "Abelardo",
  "Ablio",
  "Abrao",
  "Abraho",
  "Abro",
  "Ada",
  "Adalberto",
  "Adalgisa",
  "Ado",
  "Adela",
  "Adelaide",
  "Adelberto",
  "Adle",
  "Adlia",
  "Adelina",
  "Ademar",
  "Adhemar",
  "Adolfo",
  "Adolpho",
  "Isaas",
  "Isaura",
  "Isidora",
  "Isidoro",
  "sis",
  "Ismael",
  "Israel",
  "talo",
  "Itamar",
  "Yvette",
  "Yvone",
  "Zacarias",
  "Zara",
  "Zlia",
  "Zenaide",
  "Zenon",
  "Zilda",
  "Zoe",
  "Zuleica",
  "Zuleika"
];
