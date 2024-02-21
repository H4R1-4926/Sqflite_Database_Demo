// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_db.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentDb _$StudentDbFromJson(Map<String, dynamic> json) {
  return _StudentDb.fromJson(json);
}

/// @nodoc
mixin _$StudentDb {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'class_name')
  String? get className => throw _privateConstructorUsedError;
  String? get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentDbCopyWith<StudentDb> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentDbCopyWith<$Res> {
  factory $StudentDbCopyWith(StudentDb value, $Res Function(StudentDb) then) =
      _$StudentDbCopyWithImpl<$Res, StudentDb>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'class_name') String? className,
      String? age});
}

/// @nodoc
class _$StudentDbCopyWithImpl<$Res, $Val extends StudentDb>
    implements $StudentDbCopyWith<$Res> {
  _$StudentDbCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? className = freezed,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentDbImplCopyWith<$Res>
    implements $StudentDbCopyWith<$Res> {
  factory _$$StudentDbImplCopyWith(
          _$StudentDbImpl value, $Res Function(_$StudentDbImpl) then) =
      __$$StudentDbImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'class_name') String? className,
      String? age});
}

/// @nodoc
class __$$StudentDbImplCopyWithImpl<$Res>
    extends _$StudentDbCopyWithImpl<$Res, _$StudentDbImpl>
    implements _$$StudentDbImplCopyWith<$Res> {
  __$$StudentDbImplCopyWithImpl(
      _$StudentDbImpl _value, $Res Function(_$StudentDbImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? className = freezed,
    Object? age = freezed,
  }) {
    return _then(_$StudentDbImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentDbImpl implements _StudentDb {
  _$StudentDbImpl(
      {this.id,
      this.name,
      @JsonKey(name: 'class_name') this.className,
      this.age});

  factory _$StudentDbImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentDbImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'class_name')
  final String? className;
  @override
  final String? age;

  @override
  String toString() {
    return 'StudentDb(id: $id, name: $name, className: $className, age: $age)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentDbImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, className, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentDbImplCopyWith<_$StudentDbImpl> get copyWith =>
      __$$StudentDbImplCopyWithImpl<_$StudentDbImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentDbImplToJson(
      this,
    );
  }
}

abstract class _StudentDb implements StudentDb {
  factory _StudentDb(
      {final int? id,
      final String? name,
      @JsonKey(name: 'class_name') final String? className,
      final String? age}) = _$StudentDbImpl;

  factory _StudentDb.fromJson(Map<String, dynamic> json) =
      _$StudentDbImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'class_name')
  String? get className;
  @override
  String? get age;
  @override
  @JsonKey(ignore: true)
  _$$StudentDbImplCopyWith<_$StudentDbImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
