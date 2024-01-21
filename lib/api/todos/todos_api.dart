import 'package:flutter_todos/api/urls.dart';
import 'package:flutter_todos/entities/entities.dart';
import 'package:network/network.dart';

import 'dto/dto.dart';
import 'i_todos_api.dart';
import 'mappers/mappers.dart';

final class TodosApi implements ITodosApi {
  const TodosApi({
    required NetworkClient networkClient,
  }) : _networkClient = networkClient;

  final NetworkClient _networkClient;

  @override
  Future<List<TodoEntity>> fetchTodos() async {
    final request = Request(
      _networkClient,
      url: Urls.todos,
    );

    final response = await request.make();

    final json = response.data;
    final dtoList = TodosDto.fromJson(json);

    return TodosMapper.map(dtoList.todos);
  }

  /**
   * Note(alordead): Actually this method doesn't work with this API,
   * the uploaded todo would not be saved on the server,
   * but 200 OK response will be returned.
   */
  @override
  Future<void> uploadTodo({
    required TodoEntity todo,
  }) {
    final request = Request(
      _networkClient,
      url: Urls.todos,
      method: RequestMethod.post,
      data: TodoRequestMapper.map(todo),
    );

    return request.make();
  }

  @override
  Future<void> updateTodo({required TodoEntity todo}) {
    final request = Request(
      _networkClient,
      url: Urls.updateTodo(todo.id),
      method: RequestMethod.put,
      data: TodoRequestMapper.map(todo),
    );

    return request.make();
  }
}
