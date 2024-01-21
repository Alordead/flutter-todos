import 'dart:async';

import 'package:flutter_todos/api/api_interfaces.dart';
import 'package:flutter_todos/entities/entities.dart';
import 'package:flutter_todos/stores/store_interfaces.dart';

import 'i_todos_repository.dart';

final class TodosRepository implements ITodosRepository {
  const TodosRepository({
    required ITodosApi todosApi,
    required ITodosStore todosStore,
  })  : _todosApi = todosApi,
        _todosStore = todosStore;

  final ITodosApi _todosApi;
  final ITodosStore _todosStore;

  @override
  Future<void> addTodo({required String todoTitle}) async {
    final todos = _todosStore.getTodos();

    final todo = TodoEntity(
      id: todos.length + 1,
      title: todoTitle,
      isCompleted: false,
    );

    _todosStore.insertTodo(todo);

    try {
      await _todosApi.uploadTodo(todo: todo);
    } catch (e, trace) {
      print('Could not upload todo: $e, $trace');
    }
  }

  @override
  void updateTodo({required TodoEntity todo}) {
    _todosStore.updateTodo(todo);

    try {
      unawaited(_todosApi.updateTodo(todo: todo));
    } catch (e, trace) {
      print('Could not update todo: $e, $trace');
    }
  }

  @override
  Future<bool> refreshTodos() async {
    try {
      final todos = await _todosApi.fetchTodos();

      _todosStore.clearTodos();
      _todosStore.insertTodos(todos.reversed.toList());

      return true;
    } catch (e, trace) {
      print('Could not refresh todos: $e, $trace');

      return false;
    }
  }

  @override
  List<TodoEntity> getTodos() {
    return _todosStore.getTodos();
  }
}
