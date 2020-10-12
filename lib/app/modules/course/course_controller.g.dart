// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CourseController = BindInject(
  (i) => CourseController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CourseController on _CourseControllerBase, Store {
  final _$coursesAtom = Atom(name: '_CourseControllerBase.courses');

  @override
  List<Courses> get courses {
    _$coursesAtom.reportRead();
    return super.courses;
  }

  @override
  set courses(List<Courses> value) {
    _$coursesAtom.reportWrite(value, super.courses, () {
      super.courses = value;
    });
  }

  @override
  String toString() {
    return '''
courses: ${courses}
    ''';
  }
}
