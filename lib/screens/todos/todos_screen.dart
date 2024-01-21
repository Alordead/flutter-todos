import 'package:flutter_todos/repositories/repository_interfaces.dart';
import 'package:routing/routing.dart';

import 'view/todos_view.dart';
import 'view_model/todos_view_model.dart';

final class TodosScreen implements Screen {
  const TodosScreen({
    required AppNavigator navigator,
    required ITodosRepository todosRepository,
  })  : _navigator = navigator,
        _todosRepository = todosRepository;

  final AppNavigator _navigator;
  final ITodosRepository _todosRepository;

  @override
  View view(PathArgs pathArgs, QueryArgs queryArgs) {
    return TodosView(
      viewModelBuilder: () => TodosViewModel(
        navigator: _navigator,
        todosRepository: _todosRepository,
      ),
    );
  }
}
