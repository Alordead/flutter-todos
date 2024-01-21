import 'package:flutter_todos/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todos_store_state.freezed.dart';

@freezed
class TodosStoreState with _$TodosStoreState {
  const factory TodosStoreState({
    @Default([]) List<TodoEntity> todos,
  }) = _TodosStoreState;
}
