abstract class Fruta {
  String nome;
  double peso;
  String cor;
  bool isMadura;
  int dayLimitMin;
  int dayLimitMax;
  late int? quantosDiasMaduras;
  late int? quantosDiasAteApodrecer;
  late int? quantosDiasPodre;
  late int? quantosDiasAteAmadurecer;
  Fruta(
      {required this.nome,
      required this.cor,
      required this.peso,
      this.isMadura = false,
      this.dayLimitMin = 10,
      this.dayLimitMax = 20});


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
    return {'nome': nome, 'peso': peso, 'cor': cor, 'status': isMadura, 'limites': [dayLimitMin, dayLimitMax]};
  }
}

class Banana extends Fruta {
  Banana(
      {required super.nome,
      required super.cor,
      required super.peso});
}

class Maca extends Fruta {
  Maca(
      {required super.nome,
      required super.cor,
      required super.peso});
}
