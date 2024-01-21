import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_todo_view_state.freezed.dart';

abstract interface class IAddTodoViewState with _$AddTodoViewState {}

@freezed
class AddTodoViewState with _$AddTodoViewState implements IAddTodoViewState {
  const factory AddTodoViewState({
    required String title,
  }) = _AddTodoViewState;
}
