import 'package:flutter_todos/entities/entities.dart';

abstract interface class ITodosRepository {
  Future<void> addTodo({required String todoTitle});
  void updateTodo({required TodoEntity todo});
  Future<bool> refreshTodos();
  List<TodoEntity> getTodos();
}
