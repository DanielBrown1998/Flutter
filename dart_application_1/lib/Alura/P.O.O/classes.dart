abstract class Bolo {
  String sabor;
  bool isVegano;
  Bolo({required this.sabor, required this.isVegano});

  void assar();
}

abstract class Alimento {
  String nome;
  double peso;
  bool isPrecisaCozimento;
  Alimento(
      {required this.nome,
      required this.peso,
      required this.isPrecisaCozimento});

  void propriedades() {}
  void cozinhar() {
    if (isPrecisaCozimento) {
      print('Cozinhando $nome');
    } else {
      print('$nome não precisa ser cozido');
    }
  }
}

class BoloChocolate extends Alimento implements Bolo {
  @override
  String sabor;
  @override
  bool isVegano;
  BoloChocolate(
      {required super.nome,
      required super.peso,
      super.isPrecisaCozimento = false,
      this.sabor = 'doce',
      this.isVegano = false});

  @override
  void propriedades() {
    print('${super.nome} é um doce');
  }

  @override
  void cozinhar() {
    print('verificando se o alimento pode ser cozido!');
    super.cozinhar();
  }

  @override
  void assar() {
    print('Assando bolo de $sabor');
  }
}

class Fruta extends Alimento {
  late int? quantosDiasMaduras;
  late int? quantosDiasAteApodrecer;
  late int? quantosDiasPodre;
  late int? quantosDiasAteAmadurecer;
  bool? isMadura;
  int dayLimitMin;
  int dayLimitMax;
  Fruta(
      {required super.nome,
      required super.peso,
      super.isPrecisaCozimento = false,
      this.isMadura = false,
      this.dayLimitMin = 10,
      this.dayLimitMax = 20});

  @override
  void propriedades() {
    print('${super.nome} é uma fruta rica em vitaminas e minerais');
  }

  mostraMadura({required int days}) {
    if (days >= dayLimitMin && days <= dayLimitMax) {
      isMadura = true;
      quantosDiasAteAmadurecer = 0;
      quantosDiasMaduras = days - dayLimitMin;
      quantosDiasAteApodrecer = dayLimitMax - days;
      quantosDiasPodre = 0;

      print(
          'A fruta $nome está a $quantosDiasMaduras dias madura,\nfaltam $quantosDiasAteApodrecer dias para apodrecer ');
    } else if (days < dayLimitMin) {
      isMadura = false;
      quantosDiasMaduras = 0;
      quantosDiasPodre = 0;
      quantosDiasAteAmadurecer = dayLimitMin - days;
      quantosDiasAteApodrecer = dayLimitMax - days;
      print(
          'A fruta $nome ainda não está madura,\nfaltam $quantosDiasAteAmadurecer para amadurecer');
    } else {
      isMadura = false;
      quantosDiasMaduras = 0;
      quantosDiasAteApodrecer = 0;
      quantosDiasAteAmadurecer = 0;
      quantosDiasPodre = days - dayLimitMax;
      print('A fruta $nome está podre a $quantosDiasPodre');
    }
  }

  Map<String, dynamic> caracteristicas() {
    return {
      'nome': nome,
      'peso': peso,
      'status': isMadura,
      'limites': [dayLimitMin, dayLimitMax]
    };
  }
}

class Verdura extends Alimento {
  Verdura(
      {required super.nome,
      required super.peso,
      required super.isPrecisaCozimento});

  @override
  void propriedades() {
    print('${super.nome} é uma verdura rica em vitaminas e minerais');
  }
}

class Legume extends Alimento {
  Legume(
      {required super.nome,
      required super.peso,
      required super.isPrecisaCozimento});

  @override
  void propriedades() {
    print('${super.nome} é um legume rico em vitaminas e minerais');
  }
}

class Cereal extends Alimento {
  Cereal(
      {required super.nome,
      required super.peso,
      required super.isPrecisaCozimento});

  @override
  void propriedades() {
    print('${super.nome} é um cereal rico em fibras e carboidratos');
  }
}
