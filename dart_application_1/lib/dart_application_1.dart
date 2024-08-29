int calculate() {
  return 6 * 7;
}

class Pessoa {
  String nome;
  int idade;
  double altura;
  double peso = 0.0;
  String sexo = '';
  String _profissao = '';
  double _salario = 0.0;

  Pessoa({
    required this.nome,
    required this.idade,
    required this.altura,
    required this.peso,
    this.sexo = "M",
  });

  void dormir() {
    print("$nome está dormindo!");
  }

  void aniversario() {
    idade++;
  }

  set profissao(String value) => _profissao = value;
  String get profissao {
    return _profissao;
  }

  set salario(double value) {
    if (value < 1412.0) {
      print(
          '$value menor que o salário mínimo, portanto fora atribuído 1412.0 ao salário');
      _salario = 1412.0;
    } else {
      _salario = value;
    }
  }

  double get salario {
    return _salario;
  }
}

class Funcionario extends Pessoa {
  String _cargo = '';

  Funcionario({
    required super.nome,
    required super.idade,
    required super.altura,
    required super.peso,
    super.sexo,
  });

  set cargo(String value) => _cargo = value;
  String get cargo {
    return _cargo;
  }
}
