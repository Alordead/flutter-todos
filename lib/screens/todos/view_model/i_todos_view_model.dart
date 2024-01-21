import 'package:flutter_todos/entities/entities.dart';

abstract interface class ITodosViewModel {
  Future<void> onRefreshRequested();
  void onAddTodoTap();
  void onUpdateTodoTap({required TodoEntity todo, required bool? isCompleted});
}
