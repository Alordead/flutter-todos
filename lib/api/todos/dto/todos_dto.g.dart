// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodosDtoImpl _$$TodosDtoImplFromJson(Map<String, dynamic> json) =>
    _$TodosDtoImpl(
      todos: (json['todos'] as List<dynamic>)
          .map((e) => TodoDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TodosDtoImplToJson(_$TodosDtoImpl instance) =>
    <String, dynamic>{
      'todos': instance.todos,
    };
