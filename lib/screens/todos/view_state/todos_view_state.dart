import 'package:flutter_todos/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todos_view_state.freezed.dart';

abstract interface class ITodosViewState with _$TodosViewState {}

@freezed
class TodosViewState with _$TodosViewState implements ITodosViewState {
  const factory TodosViewState.initial() = _TodosViewStateInitial;

  const factory TodosViewState.loading() = _TodosViewStateLoading;

  const factory TodosViewState.fulfilled({
    required List<TodoEntity> todos,
  }) = _TodosViewStateFulfilled;

  const factory TodosViewState.error({
    required String message,
  }) = _TodosViewStateError;
}
