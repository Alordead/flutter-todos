import 'package:flutter/material.dart';

extension WidgetIterableQuiver<T extends Widget> on Iterable<T> {
  /// Returns copy of Iterable casted to List<Widget> with added separator from [separatorBuilder]
  /// between each element of iterable
  List<Widget> separatedWidgets(Widget separatorBuilder()) {
    final List<Widget> result = [];

    final iterator = this.iterator;
    if (iterator.moveNext()) {
      result.add(iterator.current);
    }

    while (iterator.moveNext()) {
      result.add(separatorBuilder());
      result.add(iterator.current);
    }

    return result;
  }
}
