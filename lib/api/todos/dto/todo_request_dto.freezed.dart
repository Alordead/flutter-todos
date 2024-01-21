// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoRequestDto {
  @JsonKey(name: 'userId')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed')
  bool get completed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoRequestDtoCopyWith<TodoRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoRequestDtoCopyWith<$Res> {
  factory $TodoRequestDtoCopyWith(
          TodoRequestDto value, $Res Function(TodoRequestDto) then) =
      _$TodoRequestDtoCopyWithImpl<$Res, TodoRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') int userId,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'completed') bool completed});
}

/// @nodoc
class _$TodoRequestDtoCopyWithImpl<$Res, $Val extends TodoRequestDto>
    implements $TodoRequestDtoCopyWith<$Res> {
  _$TodoRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? title = null,
    Object? completed = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoRequestDtoImplCopyWith<$Res>
    implements $TodoRequestDtoCopyWith<$Res> {
  factory _$$TodoRequestDtoImplCopyWith(_$TodoRequestDtoImpl value,
          $Res Function(_$TodoRequestDtoImpl) then) =
      __$$TodoRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') int userId,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'completed') bool completed});
}

/// @nodoc
class __$$TodoRequestDtoImplCopyWithImpl<$Res>
    extends _$TodoRequestDtoCopyWithImpl<$Res, _$TodoRequestDtoImpl>
    implements _$$TodoRequestDtoImplCopyWith<$Res> {
  __$$TodoRequestDtoImplCopyWithImpl(
      _$TodoRequestDtoImpl _value, $Res Function(_$TodoRequestDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? title = null,
    Object? completed = null,
  }) {
    return _then(_$TodoRequestDtoImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$TodoRequestDtoImpl implements _TodoRequestDto {
  const _$TodoRequestDtoImpl(
      {@JsonKey(name: 'userId') required this.userId,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'completed') required this.completed});

  @override
  @JsonKey(name: 'userId')
  final int userId;
  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'completed')
  final bool completed;

  @override
  String toString() {
    return 'TodoRequestDto(userId: $userId, id: $id, title: $title, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoRequestDtoImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, id, title, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoRequestDtoImplCopyWith<_$TodoRequestDtoImpl> get copyWith =>
      __$$TodoRequestDtoImplCopyWithImpl<_$TodoRequestDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _TodoRequestDto implements TodoRequestDto {
  const factory _TodoRequestDto(
          {@JsonKey(name: 'userId') required final int userId,
          @JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'completed') required final bool completed}) =
      _$TodoRequestDtoImpl;

  @override
  @JsonKey(name: 'userId')
  int get userId;
  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'completed')
  bool get completed;
  @override
  @JsonKey(ignore: true)
  _$$TodoRequestDtoImplCopyWith<_$TodoRequestDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
