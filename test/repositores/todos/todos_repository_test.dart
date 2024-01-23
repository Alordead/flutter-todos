import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:flutter_todos/api/api_interfaces.dart';
import 'package:flutter_todos/entities/entities.dart';
import 'package:flutter_todos/repositories/repository_implementations.dart';
import 'package:flutter_todos/stores/store_interfaces.dart';

class _MockTodosApi extends Mock implements ITodosApi {}

class _MockTodosStore extends Mock implements ITodosStore {}

void main() {
  group('TodosRepository', () {
    late TodosRepository todosRepository;

    late ITodosApi todosApi;
    late ITodosStore todosStore;

    setUp(() {
      todosApi = _MockTodosApi();
      todosStore = _MockTodosStore();

      todosRepository = TodosRepository(
        todosApi: todosApi,
        todosStore: todosStore,
      );
    });

    tearDown(() {
      verifyNoMoreInteractions(todosApi);
      verifyNoMoreInteractions(todosStore);
    });

    group('addTodo', () {
      test(
        'addTodo'
        'when todosApi.uploadTodo is successful',
        () async {
          const todoTitle = 'Todo title';

          const todo = TodoEntity(
            id: 1,
            title: todoTitle,
            isCompleted: false,
          );

          when(() => todosStore.getTodos()).thenReturn([]);
          when(() => todosStore.insertTodo(todo)).thenReturn(null);
          when(() => todosApi.uploadTodo(todo: todo))
              .thenAnswer((_) async => null);

          await todosRepository.addTodo(
            todoTitle: todoTitle,
          );

          verify(() => todosStore.getTodos()).called(1);
          verify(() => todosStore.insertTodo(todo)).called(1);
          verify(() => todosApi.uploadTodo(todo: todo)).called(1);
        },
      );

      test(
        'addTodo'
        'when todosApi.uploadTodo throws exception',
        () async {
          const todoTitle = 'Todo title';

          const todo = TodoEntity(
            id: 1,
            title: todoTitle,
            isCompleted: false,
          );

          when(() => todosStore.getTodos()).thenReturn([]);
          when(() => todosStore.insertTodo(todo)).thenReturn(null);
          when(() => todosApi.uploadTodo(todo: todo))
              .thenThrow((_) async => Exception('Exception'));

          await todosRepository.addTodo(
            todoTitle: todoTitle,
          );

          verify(() => todosStore.getTodos()).called(1);
          verify(() => todosStore.insertTodo(todo)).called(1);
          verify(() => todosApi.uploadTodo(todo: todo)).called(1);
        },
      );
    });

    group('updateTodo', () {
      test(
        'updateTodo'
        'when todosApi.updateTodo is successful',
        () async {
          const todo = TodoEntity(
            id: 1,
            title: 'Todo title',
            isCompleted: false,
          );

          when(() => todosStore.updateTodo(todo)).thenReturn(null);
          when(() => todosApi.updateTodo(todo: todo))
              .thenAnswer((_) async => null);

          todosRepository.updateTodo(todo: todo);

          verify(() => todosStore.updateTodo(todo)).called(1);
          verify(() => todosApi.updateTodo(todo: todo)).called(1);
        },
      );

      test(
        'updateTodo'
        'when todosApi.updateTodo throws exception',
        () async {
          const todo = TodoEntity(
            id: 1,
            title: 'Todo title',
            isCompleted: false,
          );

          when(() => todosStore.updateTodo(todo)).thenReturn(null);
          when(() => todosApi.updateTodo(todo: todo))
              .thenThrow((_) async => Exception('Exception'));

          todosRepository.updateTodo(todo: todo);

          verify(() => todosStore.updateTodo(todo)).called(1);
          verify(() => todosApi.updateTodo(todo: todo)).called(1);
        },
      );
    });

    group('getTodos', () {
      test(
        'getTodos',
        () {
          const todos = [
            TodoEntity(
              id: 1,
              title: 'Todo title',
              isCompleted: false,
            ),
          ];

          when(() => todosStore.getTodos()).thenReturn(todos);

          final result = todosRepository.getTodos();

          expect(result, todos);

          verify(() => todosStore.getTodos()).called(1);
        },
      );
    });

    group('refreshTodos', () {
      test(
        'refreshTodos'
        'when todosApi.fetchTodos is successful',
        () async {
          const todos = [
            TodoEntity(
              id: 1,
              title: 'Todo title',
              isCompleted: false,
            ),
          ];

          when(() => todosApi.fetchTodos()).thenAnswer((_) async => todos);
          when(() => todosStore.clearTodos()).thenReturn(null);
          when(() => todosStore.insertTodos(todos)).thenReturn(null);

          final result = await todosRepository.refreshTodos();

          expect(result, true);

          verify(() => todosApi.fetchTodos()).called(1);
          verify(() => todosStore.clearTodos()).called(1);
          verify(() => todosStore.insertTodos(todos)).called(1);
        },
      );

      test(
        'refreshTodos'
        'when todosApi.fetchTodos throws exception',
        () async {
          when(() => todosApi.fetchTodos())
              .thenThrow((_) => Exception('Exception'));

          final result = await todosRepository.refreshTodos();

          expect(result, false);

          verify(() => todosApi.fetchTodos()).called(1);
          verifyNever(() => todosStore.clearTodos()).called(0);
          verifyNever(() => todosStore.insertTodos([])).called(0);
        },
      );
    });
  });
}
