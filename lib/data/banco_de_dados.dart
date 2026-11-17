// Classes abstract são classes que não tem construtor e que não é possível de ganhar instâncias delas.
// São usadas de duas formas:
// 1) Ser uma classe padrão (default) que outras classes podem usar quando tem métodos ou atributos iguais.
// 2) Definir um modelo ou contrato dos métodos que uma classe tem que implementar para ser usada.

// Aqui estamos usando o primeiro caso, ou seja, classe padrão/comum/igual que as classes filhas podem usar.
abstract class BancoDeDados {
  
  static int _gerenciadorDeId = 0;

  // int gerarNovoId() => ++_gerenciadorDeId;
  int gerarNovoId() {
    _gerenciadorDeId += 1;
    
    return _gerenciadorDeId;
  }

}