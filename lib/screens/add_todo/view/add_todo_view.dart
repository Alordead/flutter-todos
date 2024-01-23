import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart' hide View;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todos/generated/locale_keys.g.dart';
import 'package:routing/routing.dart';

import '../view_model/add_todo_view_model.dart';
import '../view_model/i_add_todo_view_model.dart';
import '../view_state/add_todo_view_state.dart';

class AddTodoView extends View<IAddTodoViewModel, AddTodoViewModel,
    IAddTodoViewState, AddTodoViewState> {
  const AddTodoView({
    required super.viewModelBuilder,
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
    IAddTodoViewModel viewModel,
    StateNotifierProvider<AddTodoViewModel, IAddTodoViewState>
        viewStateProvider,
  ) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            onChanged: viewModel.onTitleChanged,
            focusNode: FocusNode()..requestFocus(),
            decoration: InputDecoration(
              labelText: LocaleKeys.addTodoTitleLabel.tr(),
            ),
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: viewModel.onCancelTap,
                  child: const Text(LocaleKeys.cancelTitle).tr(),
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: MaterialButton(
                  onPressed: viewModel.onSaveTap,
                  child: const Text(
                    LocaleKeys.saveTitle,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ).tr(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
