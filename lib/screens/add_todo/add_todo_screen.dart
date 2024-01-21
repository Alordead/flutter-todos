import 'package:flutter_todos/repositories/repository_interfaces.dart';
import 'package:routing/routing.dart';

import 'view/add_todo_view.dart';
import 'view_model/add_todo_view_model.dart';

final class AddTodoScreen implements Screen {
  const AddTodoScreen({
    required AppNavigator navigator,
    required ITodosRepository todosRepository,
  })  : _navigator = navigator,
        _todosRepository = todosRepository;

  final AppNavigator _navigator;
  final ITodosRepository _todosRepository;

  @override
  View view(PathArgs pathArgs, QueryArgs queryArgs) {
    return AddTodoView(
      viewModelBuilder: () => AddTodoViewModel(
        navigator: _navigator,
        todosRepository: _todosRepository,
      ),
    );
  }
}
