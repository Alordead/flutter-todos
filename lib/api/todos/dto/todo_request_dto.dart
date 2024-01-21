import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_request_dto.freezed.dart';
part 'todo_request_dto.g.dart';

@Freezed(toJson: true)
class TodoRequestDto with _$TodoRequestDto {
  const factory TodoRequestDto({
    @JsonKey(name: 'userId') required int userId,
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'completed') required bool completed,
  }) = _TodoRequestDto;
}
