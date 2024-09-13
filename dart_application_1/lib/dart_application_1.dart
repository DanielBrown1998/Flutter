
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

class Item {
  String nome = '';
  String descricao = '';
  int peso = 0;
  int valor = 0;
  int quantidade = 0;
  int durabilidade = 0;
  int dano = 0;
  int defesa = 0;
  int magia = 0;
  int velocidade = 0;
  int nivel = 0;
  int xp = 0;

  Item(this.nome, this.peso);

}

class Habilidade {
  String nome = '';
  String descricao = '';
  int nivel = 0;
  int xp = 0;
  int dano = 0;
  int defesa = 0;
  int magia = 0;
  int velocidade = 0;
}

class Quest {
  String nome = '';
  String descricao = '';
  int nivel = 0;
  int xp = 0;
  int dinheiro = 0;
  int ouro = 0;
  int prata = 0;
  int cobre = 0;
  List<Item> recompensas = [];
}

abstract class Personagem {
  int posX;
  int posY;
  String nome;
  int vida = 100;
  int mana = 100;
  int forca = 10;
  int defesa = 10;
  int magia = 10;
  int velocidade = 10;
  int nivel = 1;
  int xp = 0;
  int xpProxNivel = 100;
  int dinheiro = 0;
  int ouro = 0;
  int prata = 0;
  int cobre = 0;
  List<Item> inventario = [];
  List<Item> equipamentos = [];
  List<Habilidade> habilidades = [];
  List<Quest> quests = [];

  Personagem({this.posX = 0, this.posY = 0, required this.nome});
}

class Jogador extends Personagem {
  Jogador(int posX, int posY, String nome)
      : super(posX: posX, posY: posY, nome: nome) {
    final double vida = super.vida / 2;
    print(vida);
  }
}
