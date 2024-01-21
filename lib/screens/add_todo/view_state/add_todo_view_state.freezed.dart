// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_todo_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddTodoViewState {
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTodoViewStateCopyWith<AddTodoViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTodoViewStateCopyWith<$Res> {
  factory $AddTodoViewStateCopyWith(
          AddTodoViewState value, $Res Function(AddTodoViewState) then) =
      _$AddTodoViewStateCopyWithImpl<$Res, AddTodoViewState>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _$AddTodoViewStateCopyWithImpl<$Res, $Val extends AddTodoViewState>
    implements $AddTodoViewStateCopyWith<$Res> {
  _$AddTodoViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddTodoViewStateImplCopyWith<$Res>
    implements $AddTodoViewStateCopyWith<$Res> {
  factory _$$AddTodoViewStateImplCopyWith(_$AddTodoViewStateImpl value,
          $Res Function(_$AddTodoViewStateImpl) then) =
      __$$AddTodoViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$AddTodoViewStateImplCopyWithImpl<$Res>
    extends _$AddTodoViewStateCopyWithImpl<$Res, _$AddTodoViewStateImpl>
    implements _$$AddTodoViewStateImplCopyWith<$Res> {
  __$$AddTodoViewStateImplCopyWithImpl(_$AddTodoViewStateImpl _value,
      $Res Function(_$AddTodoViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$AddTodoViewStateImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddTodoViewStateImpl implements _AddTodoViewState {
  const _$AddTodoViewStateImpl({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'AddTodoViewState(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTodoViewStateImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTodoViewStateImplCopyWith<_$AddTodoViewStateImpl> get copyWith =>
      __$$AddTodoViewStateImplCopyWithImpl<_$AddTodoViewStateImpl>(
          this, _$identity);
}

abstract class _AddTodoViewState implements AddTodoViewState {
  const factory _AddTodoViewState({required final String title}) =
      _$AddTodoViewStateImpl;

  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$AddTodoViewStateImplCopyWith<_$AddTodoViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
