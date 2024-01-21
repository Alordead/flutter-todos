import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_dto.freezed.dart';
part 'todo_dto.g.dart';

@freezed
class TodoDto with _$TodoDto {
  const factory TodoDto({
    @JsonKey(name: 'userId') required int userId,
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'completed') required bool completed,
  }) = _TodoDto;

  factory TodoDto.fromJson(Map<String, Object?> json) =>
      _$TodoDtoFromJson(json);
}
