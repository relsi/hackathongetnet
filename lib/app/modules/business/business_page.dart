import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'business_controller.dart';

class BusinessPage extends StatefulWidget {
  final String title;
  const BusinessPage({Key key, this.title = "Business"}) : super(key: key);

  @override
  _BusinessPageState createState() => _BusinessPageState();
}

class _BusinessPageState extends ModularState<BusinessPage, BusinessController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("MEU NEGOCIO"),
        ),
      ),
    );
  }
}
