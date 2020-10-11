import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'credit_controller.dart';

class CreditPage extends StatefulWidget {
  final String title;
  const CreditPage({Key key, this.title = "Credit"}) : super(key: key);

  @override
  _CreditPageState createState() => _CreditPageState();
}

class _CreditPageState extends ModularState<CreditPage, CreditController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("LINHA DE CRÉDITO"),
        ),
      ),
    );
  }
}
