// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $BusinessController = BindInject(
  (i) => BusinessController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BusinessController on _BusinessControllerBase, Store {
  final _$valueAtom = Atom(name: '_BusinessControllerBase.value');

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

  final _$_BusinessControllerBaseActionController =
      ActionController(name: '_BusinessControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_BusinessControllerBaseActionController.startAction(
        name: '_BusinessControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_BusinessControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
