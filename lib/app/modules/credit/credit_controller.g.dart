// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CreditController = BindInject(
  (i) => CreditController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CreditController on _CreditControllerBase, Store {
  final _$valueAtom = Atom(name: '_CreditControllerBase.value');

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

  final _$_CreditControllerBaseActionController =
      ActionController(name: '_CreditControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_CreditControllerBaseActionController.startAction(
        name: '_CreditControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_CreditControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
