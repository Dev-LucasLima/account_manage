import 'package:account_manager/domain/models/client.dart';

// Classes abstract são classes que não tem construtor e que não é possível de ganhar instâncias delas.
// São usadas de duas formas:
// 1) Ser uma classe padrão (default) que outras classes podem usar quando tem métodos ou atributos iguais.
// 2) Definir um modelo ou contrato dos métodos que uma classe tem que implementar para ser usada.

// Aqui estamos usando o segundo caso, ou seja, definindo um modelo / contrato
abstract class ClientRepository {

  List<Client> buscarTodos();

}