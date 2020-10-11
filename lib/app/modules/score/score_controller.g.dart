// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ScoreController = BindInject(
  (i) => ScoreController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ScoreController on _ScoreControllerBase, Store {
  final _$valueAtom = Atom(name: '_ScoreControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_ScoreControllerBaseActionController =
      ActionController(name: '_ScoreControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_ScoreControllerBaseActionController.startAction(
        name: '_ScoreControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_ScoreControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
