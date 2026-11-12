
class Client {

  // atributos sem "_" são sempre publicos, e com "_" são privados
  String _nome;
  String _descricao;
  int _idade;

  // 1) parametros entre chaves, são chamados de nomeados
  // 2) quando estiver com required, quem chamar o contrutor/método, é obrigado a passar o valor
  // 3) sem required, quem chamou não precisa passar o valor.
  //    3.1) quando não usamos o required, geralmente passamos o valor default/inicial 
  //        (ex.: this._nome = 'confia') 
  Client({
    required this._nome,
    required this._descricao, 
    required this._idade
   });

  // Contrutor nomeados são usados para auxiliar no contexto onde a classe é usada.
  // Ex.: Quando estou criando um cliente, ainda não tenho nenhum dado, 
  //      então a própria classe define os valores iniciais 
  Client.criar() :
    _nome = '', 
    _descricao = '',
    _idade = 0;


  String get getNome => _nome;
  String get getDescricao => _descricao;
  int get getIdade {
    return _idade;
  }

  set setNome(String novoNome) => _nome = novoNome;
  set setDescricao(String novaDescricao) => _descricao = novaDescricao;
  set setIdade(int novaIdade) {
    _idade = novaIdade;
  }

  // no DDD, quem conhece as regras de negócio, é a class/domínio
  // Ex.: Quem fala se o cliente é maior de idade, é a classe
  // Se a regra mudar, altero apenas em 1 lugar, e tudo continua funcionando
  bool ehMaiorDeIdade() => _idade >= 18;

}