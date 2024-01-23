import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart' hide View;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todos/entities/entities.dart';
import 'package:flutter_todos/generated/locale_keys.g.dart';
import 'package:routing/routing.dart';
import 'package:ui_kit/ui_kit.dart';

import '../view_model/i_todos_view_model.dart';
import '../view_model/todos_view_model.dart';
import '../view_state/todos_view_state.dart';

typedef OnTodoEntitySelectedCallback = void Function({
  required TodoEntity todo,
  required bool? isCompleted,
});

class TodosView extends View<ITodosViewModel, TodosViewModel, ITodosViewState,
    TodosViewState> {
  const TodosView({
    required super.viewModelBuilder,
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
    ITodosViewModel viewModel,
    StateNotifierProvider<TodosViewModel, ITodosViewState> viewStateProvider,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LocaleKeys.todosTitle).tr(),
        titleTextStyle: AppTextStyles.title,
        actions: [
          IconButton(
            onPressed: viewModel.onAddTodoTap,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: RefreshIndicator(
        edgeOffset: MediaQuery.of(context).padding.top,
        onRefresh: viewModel.onRefreshRequested,
        child: Consumer(
          builder: (_, ref, __) {
            final state = viewStateProvider.watchSelector(
              ref,
              (viewState) => viewState,
            );

            return state.when(
              initial: _TodosViewInitial.new,
              loading: _TodosViewLoading.new,
              error: _TodosViewError.new,
              fulfilled: (todos) => _TodosViewFulfilled(
                todos: todos,
                onTodoEntitySelected: viewModel.onUpdateTodoTap,
              ),
            );
          },
        ),
      ),
    );
  }
}

class _TodosViewInitial extends StatelessWidget {
  const _TodosViewInitial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}

class _TodosViewLoading extends StatelessWidget {
  const _TodosViewLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class _TodosViewFulfilled extends StatelessWidget {
  const _TodosViewFulfilled({
    required this.todos,
    required this.onTodoEntitySelected,
    Key? key,
  }) : super(key: key);

  final List<TodoEntity> todos;
  final OnTodoEntitySelectedCallback onTodoEntitySelected;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList.builder(
          itemCount: todos.length,
          itemBuilder: (_, index) {
            final todo = todos[index];

            return TileWidget.checkbox(
              title: todo.title,
              value: todo.isCompleted,
              onChanged: (isSelected) => onTodoEntitySelected(
                todo: todo,
                isCompleted: isSelected,
              ),
            );
          },
        ),
      ],
    );
  }
}

class _TodosViewError extends StatelessWidget {
  const _TodosViewError(
    this.message, {
    super.key,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(message),
    );
  }
}
