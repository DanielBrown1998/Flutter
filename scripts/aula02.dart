class No {
  dynamic valor = null;
  No noEsquerdo;
  No noDireito;
  List<dynamic> caminho = [];
  //método construtor
  No(dynamic this.valor, No this.noEsquerdo, No this.noDireito) {
    valor = this.valor;
    noEsquerdo = this.noEsquerdo;
    noDireito = this.noDireito;
  }

  dynamic buscaElemento(dynamic valor, No raiz) {
    do {
      this.caminho.add(raiz.valor);
      if (raiz.valor == valor) {
        return true;
      } else if (raiz.valor > valor) {
        if (raiz.noDireito.valor.isNaN()) {
          while (caminho.isNotEmpty) {
            caminho.removeAt(-1);
          }
          return false;
        }
        raiz = raiz.noDireito;
      } else if (raiz.valor < valor) {
        if (raiz.noEsquerdo.valor.isNaN()) {
          while (caminho.isNotEmpty) {
            caminho.removeAt(-1);
          }
          return false;
        }
        raiz = raiz.noEsquerdo;
      }
    } while (raiz.valor != valor);
  }
}



void main() {

}

