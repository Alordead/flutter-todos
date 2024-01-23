import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todos/entities/todo_entity.dart';

import 'i_todos_store.dart';
import 'todos_store_state.dart';

final class TodosStore extends StateNotifier<TodosStoreState>
    implements ITodosStore {
  TodosStore() : super(const TodosStoreState());

  @override
  void insertTodos(List<TodoEntity> todos) {
    state = state.copyWith(
      todos: [...todos, ...state.todos],
    );
  }

  @override
  void insertTodo(TodoEntity todo) {
    state = state.copyWith(
      todos: [todo, ...state.todos],
    );
  }

  @override
  void updateTodo(TodoEntity todo) {
    final todos = List<TodoEntity>.from(state.todos);
    final index = todos.indexWhere((t) => t.id == todo.id);
    
    if (index != -1) {
      todos[index] = todo;
    }

    state = state.copyWith(
      todos: todos,
    );
  }

  @override
  List<TodoEntity> getTodos() {
    return state.todos;
  }

  @override
  void clearTodos() {
    state = state.copyWith(
      todos: [],
    );
  }
}
