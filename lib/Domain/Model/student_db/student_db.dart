// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_db.freezed.dart';
part 'student_db.g.dart';

@freezed
class StudentDb with _$StudentDb {
  factory StudentDb({
    int? id,
    String? name,
    @JsonKey(name: 'class_name') String? className,
    String? age,
  }) = _StudentDb;

  factory StudentDb.fromJson(Map<String, dynamic> json) =>
      _$StudentDbFromJson(json);
}
