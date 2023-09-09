// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'courses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Courses _$CoursesFromJson(Map<String, dynamic> json) {
  return _Courses.fromJson(json);
}

/// @nodoc
mixin _$Courses {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get professor => throw _privateConstructorUsedError;
  int get credits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoursesCopyWith<Courses> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursesCopyWith<$Res> {
  factory $CoursesCopyWith(Courses value, $Res Function(Courses) then) =
      _$CoursesCopyWithImpl<$Res, Courses>;
  @useResult
  $Res call({String name, String description, String professor, int credits});
}

/// @nodoc
class _$CoursesCopyWithImpl<$Res, $Val extends Courses>
    implements $CoursesCopyWith<$Res> {
  _$CoursesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? professor = null,
    Object? credits = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      professor: null == professor
          ? _value.professor
          : professor // ignore: cast_nullable_to_non_nullable
              as String,
      credits: null == credits
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoursesCopyWith<$Res> implements $CoursesCopyWith<$Res> {
  factory _$$_CoursesCopyWith(
          _$_Courses value, $Res Function(_$_Courses) then) =
      __$$_CoursesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description, String professor, int credits});
}

/// @nodoc
class __$$_CoursesCopyWithImpl<$Res>
    extends _$CoursesCopyWithImpl<$Res, _$_Courses>
    implements _$$_CoursesCopyWith<$Res> {
  __$$_CoursesCopyWithImpl(_$_Courses _value, $Res Function(_$_Courses) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? professor = null,
    Object? credits = null,
  }) {
    return _then(_$_Courses(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      professor: null == professor
          ? _value.professor
          : professor // ignore: cast_nullable_to_non_nullable
              as String,
      credits: null == credits
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Courses implements _Courses {
  const _$_Courses(
      {required this.name,
      required this.description,
      required this.professor,
      required this.credits});

  factory _$_Courses.fromJson(Map<String, dynamic> json) =>
      _$$_CoursesFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String professor;
  @override
  final int credits;

  @override
  String toString() {
    return 'Courses(name: $name, description: $description, professor: $professor, credits: $credits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Courses &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.professor, professor) ||
                other.professor == professor) &&
            (identical(other.credits, credits) || other.credits == credits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, professor, credits);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoursesCopyWith<_$_Courses> get copyWith =>
      __$$_CoursesCopyWithImpl<_$_Courses>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoursesToJson(
      this,
    );
  }
}

abstract class _Courses implements Courses {
  const factory _Courses(
      {required final String name,
      required final String description,
      required final String professor,
      required final int credits}) = _$_Courses;

  factory _Courses.fromJson(Map<String, dynamic> json) = _$_Courses.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get professor;
  @override
  int get credits;
  @override
  @JsonKey(ignore: true)
  _$$_CoursesCopyWith<_$_Courses> get copyWith =>
      throw _privateConstructorUsedError;
}
