import 'package:flutter_todos/entities/entities.dart';

abstract interface class ITodosApi {
  Future<List<TodoEntity>> fetchTodos();
  Future<void> uploadTodo({required TodoEntity todo});
  Future<void> updateTodo({required TodoEntity todo});
}
