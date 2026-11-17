import 'package:account_manager/domain/models/client.dart';
import 'package:account_manager/domain/repository/client_repository.dart';

// Quando eu uso o termo 'implements' e na frente o nome da classe, eu sou 
// obrigado a implementar os métodos dessa classe.
// Ex: ClienteRepository tem o método List<Client> buscarTodos();, então eu tenho que implementar esse método.
class ClientRepositoryImpl implements ClientRepository {
  
  // O static faz com que todas as intâncias de ClientRepositoryImpl compartilhem os valores desse mapa.
  // Ou seja, se alguma instância, mudar algum valor, mudou pra todas as instâncias também.
  static Map<int, Client> clientTable = {};
  

  // implementação do método do contrato feito com o ClientRepository
  @override
  List<Client> buscarTodos() {
    // acesso todos os valores do mapa e transformo eles em lista
    return clientTable.values.toList();
  }



}