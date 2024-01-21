import 'package:freezed_annotation/freezed_annotation.dart';

import 'todo_dto.dart';

part 'todos_dto.freezed.dart';
part 'todos_dto.g.dart';

@freezed
class TodosDto with _$TodosDto {
  const factory TodosDto({
    @JsonKey(name: 'todos') required List<TodoDto> todos,
  }) = _TodosDto;

  factory TodosDto.fromJson(List<Object?> json) =>
      _$TodosDtoFromJson({'todos': json});
}
