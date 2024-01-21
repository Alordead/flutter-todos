import 'package:flutter_todos/entities/entities.dart';

import '../dto/dto.dart';

abstract class TodoRequestMapper {
  static TodoRequestDto map(TodoEntity entity) {
    return TodoRequestDto(
      // Note(alordead): In this simple example we don't need to map userId.
      userId: 1,
      id: entity.id,
      title: entity.title,
      completed: entity.isCompleted,
    );
  }
}
