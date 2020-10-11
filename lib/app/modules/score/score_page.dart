import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'score_controller.dart';

class ScorePage extends StatefulWidget {
  final String title;
  const ScorePage({Key key, this.title = "Score"}) : super(key: key);

  @override
  _ScorePageState createState() => _ScorePageState();
}

class _ScorePageState extends ModularState<ScorePage, ScoreController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("SCORE"),
        ),
      ),
    );
  }
}
