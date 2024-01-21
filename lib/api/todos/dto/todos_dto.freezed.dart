// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todos_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodosDto _$TodosDtoFromJson(Map<String, dynamic> json) {
  return _TodosDto.fromJson(json);
}

/// @nodoc
mixin _$TodosDto {
  @JsonKey(name: 'todos')
  List<TodoDto> get todos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodosDtoCopyWith<TodosDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosDtoCopyWith<$Res> {
  factory $TodosDtoCopyWith(TodosDto value, $Res Function(TodosDto) then) =
      _$TodosDtoCopyWithImpl<$Res, TodosDto>;
  @useResult
  $Res call({@JsonKey(name: 'todos') List<TodoDto> todos});
}

/// @nodoc
class _$TodosDtoCopyWithImpl<$Res, $Val extends TodosDto>
    implements $TodosDtoCopyWith<$Res> {
  _$TodosDtoCopyWithImpl(this._value, this._then);

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
              as List<TodoDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodosDtoImplCopyWith<$Res>
    implements $TodosDtoCopyWith<$Res> {
  factory _$$TodosDtoImplCopyWith(
          _$TodosDtoImpl value, $Res Function(_$TodosDtoImpl) then) =
      __$$TodosDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'todos') List<TodoDto> todos});
}

/// @nodoc
class __$$TodosDtoImplCopyWithImpl<$Res>
    extends _$TodosDtoCopyWithImpl<$Res, _$TodosDtoImpl>
    implements _$$TodosDtoImplCopyWith<$Res> {
  __$$TodosDtoImplCopyWithImpl(
      _$TodosDtoImpl _value, $Res Function(_$TodosDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_$TodosDtoImpl(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodosDtoImpl implements _TodosDto {
  const _$TodosDtoImpl(
      {@JsonKey(name: 'todos') required final List<TodoDto> todos})
      : _todos = todos;

  factory _$TodosDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodosDtoImplFromJson(json);

  final List<TodoDto> _todos;
  @override
  @JsonKey(name: 'todos')
  List<TodoDto> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TodosDto(todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodosDtoImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodosDtoImplCopyWith<_$TodosDtoImpl> get copyWith =>
      __$$TodosDtoImplCopyWithImpl<_$TodosDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodosDtoImplToJson(
      this,
    );
  }
}

abstract class _TodosDto implements TodosDto {
  const factory _TodosDto(
          {@JsonKey(name: 'todos') required final List<TodoDto> todos}) =
      _$TodosDtoImpl;

  factory _TodosDto.fromJson(Map<String, dynamic> json) =
      _$TodosDtoImpl.fromJson;

  @override
  @JsonKey(name: 'todos')
  List<TodoDto> get todos;
  @override
  @JsonKey(ignore: true)
  _$$TodosDtoImplCopyWith<_$TodosDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
