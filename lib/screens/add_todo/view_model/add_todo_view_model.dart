import 'package:flutter_todos/repositories/repository_interfaces.dart';
import 'package:routing/routing.dart';

import '../view_state/add_todo_view_state.dart';
import 'i_add_todo_view_model.dart';

class AddTodoViewModel extends ViewModel<IAddTodoViewState, AddTodoViewState>
    implements IAddTodoViewModel {
  AddTodoViewModel({
    required AppNavigator navigator,
    required ITodosRepository todosRepository,
  })  : _navigator = navigator,
        _todosRepository = todosRepository,
        super(const AddTodoViewState(title: ''));

  final AppNavigator _navigator;
  final ITodosRepository _todosRepository;

  @override
  void onTitleChanged(String title) {
    viewState = viewState.copyWith(title: title);
  }

  @override
  void onSaveTap() {
    _todosRepository.addTodo(
      todoTitle: viewState.title,
    );

    _navigator.navigateBack(true);
  }

  @override
  void onCancelTap() {
    _navigator.navigateBack(false);
  }
}
