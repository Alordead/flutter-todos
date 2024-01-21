// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todos_store_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodosStoreState {
  List<TodoEntity> get todos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodosStoreStateCopyWith<TodosStoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosStoreStateCopyWith<$Res> {
  factory $TodosStoreStateCopyWith(
          TodosStoreState value, $Res Function(TodosStoreState) then) =
      _$TodosStoreStateCopyWithImpl<$Res, TodosStoreState>;
  @useResult
  $Res call({List<TodoEntity> todos});
}

/// @nodoc
class _$TodosStoreStateCopyWithImpl<$Res, $Val extends TodosStoreState>
    implements $TodosStoreStateCopyWith<$Res> {
  _$TodosStoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_value.copyWith(
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodosStoreStateImplCopyWith<$Res>
    implements $TodosStoreStateCopyWith<$Res> {
  factory _$$TodosStoreStateImplCopyWith(_$TodosStoreStateImpl value,
          $Res Function(_$TodosStoreStateImpl) then) =
      __$$TodosStoreStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodoEntity> todos});
}

/// @nodoc
class __$$TodosStoreStateImplCopyWithImpl<$Res>
    extends _$TodosStoreStateCopyWithImpl<$Res, _$TodosStoreStateImpl>
    implements _$$TodosStoreStateImplCopyWith<$Res> {
  __$$TodosStoreStateImplCopyWithImpl(
      _$TodosStoreStateImpl _value, $Res Function(_$TodosStoreStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_$TodosStoreStateImpl(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>,
    ));
  }
}

/// @nodoc

class _$TodosStoreStateImpl implements _TodosStoreState {
  const _$TodosStoreStateImpl({final List<TodoEntity> todos = const []})
      : _todos = todos;

  final List<TodoEntity> _todos;
  @override
  @JsonKey()
  List<TodoEntity> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TodosStoreState(todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodosStoreStateImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodosStoreStateImplCopyWith<_$TodosStoreStateImpl> get copyWith =>
      __$$TodosStoreStateImplCopyWithImpl<_$TodosStoreStateImpl>(
          this, _$identity);
}

abstract class _TodosStoreState implements TodosStoreState {
  const factory _TodosStoreState({final List<TodoEntity> todos}) =
      _$TodosStoreStateImpl;

  @override
  List<TodoEntity> get todos;
  @override
  @JsonKey(ignore: true)
  _$$TodosStoreStateImplCopyWith<_$TodosStoreStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
