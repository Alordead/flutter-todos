import 'package:flutter_todos/entities/entities.dart';

import '../dto/dto.dart';

abstract class TodosMapper {
  static List<TodoEntity> map(List<TodoDto> dtoList) {
    return dtoList.map(_mapDtoToEntity).toList();
  }

  static TodoEntity _mapDtoToEntity(TodoDto todo) {
    return TodoEntity(
      id: todo.id,
      title: todo.title,
      isCompleted: todo.completed,
    );
  }
}
