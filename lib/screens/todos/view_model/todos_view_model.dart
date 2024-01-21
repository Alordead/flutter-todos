import 'dart:async';

import 'package:flutter_todos/entities/todo_entity.dart';
import 'package:flutter_todos/repositories/repository_interfaces.dart';
import 'package:routing/routing.dart';

import '../view_state/todos_view_state.dart';
import 'i_todos_view_model.dart';

class TodosViewModel extends ViewModel<ITodosViewState, TodosViewState>
    implements ITodosViewModel {
  TodosViewModel({
    required AppNavigator navigator,
    required ITodosRepository todosRepository,
  })  : _navigator = navigator,
        _todosRepository = todosRepository,
        super(const TodosViewState.initial()) {
    unawaited(_loadTodos());
  }

  final AppNavigator _navigator;
  final ITodosRepository _todosRepository;

  @override
  Future<void> onAddTodoTap() async {
    final isSuccess = await _navigator.pushNamed<void>('add_todo') as bool?;

    if (isSuccess ?? false) {
      _updateFulfilledState();
    }
  }

  @override
  Future<void> onRefreshRequested() {
    return _loadTodos();
  }

  Future<void> _loadTodos() async {
    viewState = const TodosViewState.loading();

    final isSuccess = await _todosRepository.refreshTodos();

    if (isSuccess) {
      _updateFulfilledState();
    } else {
      viewState = const TodosViewState.error(
        message: 'Could not load todos',
      );
    }
  }

  @override
  Future<void> onUpdateTodoTap({
    required TodoEntity todo,
    required bool? isCompleted,
  }) async {
    final updatedTodo = todo.copyWith(
      isCompleted: isCompleted ?? todo.isCompleted,
    );

    _todosRepository.updateTodo(todo: updatedTodo);

    _updateFulfilledState();
  }

  void _updateFulfilledState() {
    final todos = _todosRepository.getTodos();

    viewState = TodosViewState.fulfilled(todos: todos);
  }
}
