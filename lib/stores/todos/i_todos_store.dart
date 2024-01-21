import 'package:flutter_todos/entities/entities.dart';

abstract interface class ITodosStore {
  void insertTodos(List<TodoEntity> todos);
  void insertTodo(TodoEntity todo);

  void updateTodo(TodoEntity todo);

  List<TodoEntity> getTodos();

  void clearTodos();
}
