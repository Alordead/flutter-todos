// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todos_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodosViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TodoEntity> todos) fulfilled,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TodoEntity> todos)? fulfilled,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TodoEntity> todos)? fulfilled,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodosViewStateInitial value) initial,
    required TResult Function(_TodosViewStateLoading value) loading,
    required TResult Function(_TodosViewStateFulfilled value) fulfilled,
    required TResult Function(_TodosViewStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TodosViewStateInitial value)? initial,
    TResult? Function(_TodosViewStateLoading value)? loading,
    TResult? Function(_TodosViewStateFulfilled value)? fulfilled,
    TResult? Function(_TodosViewStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodosViewStateInitial value)? initial,
    TResult Function(_TodosViewStateLoading value)? loading,
    TResult Function(_TodosViewStateFulfilled value)? fulfilled,
    TResult Function(_TodosViewStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosViewStateCopyWith<$Res> {
  factory $TodosViewStateCopyWith(
          TodosViewState value, $Res Function(TodosViewState) then) =
      _$TodosViewStateCopyWithImpl<$Res, TodosViewState>;
}

/// @nodoc
class _$TodosViewStateCopyWithImpl<$Res, $Val extends TodosViewState>
    implements $TodosViewStateCopyWith<$Res> {
  _$TodosViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TodosViewStateInitialImplCopyWith<$Res> {
  factory _$$TodosViewStateInitialImplCopyWith(
          _$TodosViewStateInitialImpl value,
          $Res Function(_$TodosViewStateInitialImpl) then) =
      __$$TodosViewStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodosViewStateInitialImplCopyWithImpl<$Res>
    extends _$TodosViewStateCopyWithImpl<$Res, _$TodosViewStateInitialImpl>
    implements _$$TodosViewStateInitialImplCopyWith<$Res> {
  __$$TodosViewStateInitialImplCopyWithImpl(_$TodosViewStateInitialImpl _value,
      $Res Function(_$TodosViewStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodosViewStateInitialImpl implements _TodosViewStateInitial {
  const _$TodosViewStateInitialImpl();

  @override
  String toString() {
    return 'TodosViewState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodosViewStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TodoEntity> todos) fulfilled,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TodoEntity> todos)? fulfilled,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TodoEntity> todos)? fulfilled,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodosViewStateInitial value) initial,
    required TResult Function(_TodosViewStateLoading value) loading,
    required TResult Function(_TodosViewStateFulfilled value) fulfilled,
    required TResult Function(_TodosViewStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TodosViewStateInitial value)? initial,
    TResult? Function(_TodosViewStateLoading value)? loading,
    TResult? Function(_TodosViewStateFulfilled value)? fulfilled,
    TResult? Function(_TodosViewStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodosViewStateInitial value)? initial,
    TResult Function(_TodosViewStateLoading value)? loading,
    TResult Function(_TodosViewStateFulfilled value)? fulfilled,
    TResult Function(_TodosViewStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TodosViewStateInitial implements TodosViewState {
  const factory _TodosViewStateInitial() = _$TodosViewStateInitialImpl;
}

/// @nodoc
abstract class _$$TodosViewStateLoadingImplCopyWith<$Res> {
  factory _$$TodosViewStateLoadingImplCopyWith(
          _$TodosViewStateLoadingImpl value,
          $Res Function(_$TodosViewStateLoadingImpl) then) =
      __$$TodosViewStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodosViewStateLoadingImplCopyWithImpl<$Res>
    extends _$TodosViewStateCopyWithImpl<$Res, _$TodosViewStateLoadingImpl>
    implements _$$TodosViewStateLoadingImplCopyWith<$Res> {
  __$$TodosViewStateLoadingImplCopyWithImpl(_$TodosViewStateLoadingImpl _value,
      $Res Function(_$TodosViewStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodosViewStateLoadingImpl implements _TodosViewStateLoading {
  const _$TodosViewStateLoadingImpl();

  @override
  String toString() {
    return 'TodosViewState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodosViewStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TodoEntity> todos) fulfilled,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TodoEntity> todos)? fulfilled,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TodoEntity> todos)? fulfilled,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodosViewStateInitial value) initial,
    required TResult Function(_TodosViewStateLoading value) loading,
    required TResult Function(_TodosViewStateFulfilled value) fulfilled,
    required TResult Function(_TodosViewStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TodosViewStateInitial value)? initial,
    TResult? Function(_TodosViewStateLoading value)? loading,
    TResult? Function(_TodosViewStateFulfilled value)? fulfilled,
    TResult? Function(_TodosViewStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodosViewStateInitial value)? initial,
    TResult Function(_TodosViewStateLoading value)? loading,
    TResult Function(_TodosViewStateFulfilled value)? fulfilled,
    TResult Function(_TodosViewStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _TodosViewStateLoading implements TodosViewState {
  const factory _TodosViewStateLoading() = _$TodosViewStateLoadingImpl;
}

/// @nodoc
abstract class _$$TodosViewStateFulfilledImplCopyWith<$Res> {
  factory _$$TodosViewStateFulfilledImplCopyWith(
          _$TodosViewStateFulfilledImpl value,
          $Res Function(_$TodosViewStateFulfilledImpl) then) =
      __$$TodosViewStateFulfilledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TodoEntity> todos});
}

/// @nodoc
class __$$TodosViewStateFulfilledImplCopyWithImpl<$Res>
    extends _$TodosViewStateCopyWithImpl<$Res, _$TodosViewStateFulfilledImpl>
    implements _$$TodosViewStateFulfilledImplCopyWith<$Res> {
  __$$TodosViewStateFulfilledImplCopyWithImpl(
      _$TodosViewStateFulfilledImpl _value,
      $Res Function(_$TodosViewStateFulfilledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_$TodosViewStateFulfilledImpl(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>,
    ));
  }
}

/// @nodoc

class _$TodosViewStateFulfilledImpl implements _TodosViewStateFulfilled {
  const _$TodosViewStateFulfilledImpl({required final List<TodoEntity> todos})
      : _todos = todos;

  final List<TodoEntity> _todos;
  @override
  List<TodoEntity> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TodosViewState.fulfilled(todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodosViewStateFulfilledImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodosViewStateFulfilledImplCopyWith<_$TodosViewStateFulfilledImpl>
      get copyWith => __$$TodosViewStateFulfilledImplCopyWithImpl<
          _$TodosViewStateFulfilledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TodoEntity> todos) fulfilled,
    required TResult Function(String message) error,
  }) {
    return fulfilled(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TodoEntity> todos)? fulfilled,
    TResult? Function(String message)? error,
  }) {
    return fulfilled?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TodoEntity> todos)? fulfilled,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (fulfilled != null) {
      return fulfilled(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodosViewStateInitial value) initial,
    required TResult Function(_TodosViewStateLoading value) loading,
    required TResult Function(_TodosViewStateFulfilled value) fulfilled,
    required TResult Function(_TodosViewStateError value) error,
  }) {
    return fulfilled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TodosViewStateInitial value)? initial,
    TResult? Function(_TodosViewStateLoading value)? loading,
    TResult? Function(_TodosViewStateFulfilled value)? fulfilled,
    TResult? Function(_TodosViewStateError value)? error,
  }) {
    return fulfilled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodosViewStateInitial value)? initial,
    TResult Function(_TodosViewStateLoading value)? loading,
    TResult Function(_TodosViewStateFulfilled value)? fulfilled,
    TResult Function(_TodosViewStateError value)? error,
    required TResult orElse(),
  }) {
    if (fulfilled != null) {
      return fulfilled(this);
    }
    return orElse();
  }
}

abstract class _TodosViewStateFulfilled implements TodosViewState {
  const factory _TodosViewStateFulfilled(
      {required final List<TodoEntity> todos}) = _$TodosViewStateFulfilledImpl;

  List<TodoEntity> get todos;
  @JsonKey(ignore: true)
  _$$TodosViewStateFulfilledImplCopyWith<_$TodosViewStateFulfilledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodosViewStateErrorImplCopyWith<$Res> {
  factory _$$TodosViewStateErrorImplCopyWith(_$TodosViewStateErrorImpl value,
          $Res Function(_$TodosViewStateErrorImpl) then) =
      __$$TodosViewStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TodosViewStateErrorImplCopyWithImpl<$Res>
    extends _$TodosViewStateCopyWithImpl<$Res, _$TodosViewStateErrorImpl>
    implements _$$TodosViewStateErrorImplCopyWith<$Res> {
  __$$TodosViewStateErrorImplCopyWithImpl(_$TodosViewStateErrorImpl _value,
      $Res Function(_$TodosViewStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TodosViewStateErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TodosViewStateErrorImpl implements _TodosViewStateError {
  const _$TodosViewStateErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'TodosViewState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodosViewStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodosViewStateErrorImplCopyWith<_$TodosViewStateErrorImpl> get copyWith =>
      __$$TodosViewStateErrorImplCopyWithImpl<_$TodosViewStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TodoEntity> todos) fulfilled,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TodoEntity> todos)? fulfilled,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TodoEntity> todos)? fulfilled,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodosViewStateInitial value) initial,
    required TResult Function(_TodosViewStateLoading value) loading,
    required TResult Function(_TodosViewStateFulfilled value) fulfilled,
    required TResult Function(_TodosViewStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TodosViewStateInitial value)? initial,
    TResult? Function(_TodosViewStateLoading value)? loading,
    TResult? Function(_TodosViewStateFulfilled value)? fulfilled,
    TResult? Function(_TodosViewStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodosViewStateInitial value)? initial,
    TResult Function(_TodosViewStateLoading value)? loading,
    TResult Function(_TodosViewStateFulfilled value)? fulfilled,
    TResult Function(_TodosViewStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _TodosViewStateError implements TodosViewState {
  const factory _TodosViewStateError({required final String message}) =
      _$TodosViewStateErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$TodosViewStateErrorImplCopyWith<_$TodosViewStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
