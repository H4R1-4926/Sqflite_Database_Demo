// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_db.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentDbImpl _$$StudentDbImplFromJson(Map<String, dynamic> json) =>
    _$StudentDbImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      className: json['class_name'] as String?,
      age: json['age'] as String?,
    );

Map<String, dynamic> _$$StudentDbImplToJson(_$StudentDbImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'class_name': instance.className,
      'age': instance.age,
    };
