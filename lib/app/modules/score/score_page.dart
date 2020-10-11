import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'widgets/weekly_chart.dart';
import 'package:flutter_svg/svg.dart';
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
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
//        appBar: buildDetailsAppBar(context),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(controller.avatar),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Text("Score", style: textTheme.headline5.copyWith(fontWeight: FontWeight.w600)),
                Text(
                  "Acompanhe sua pontuação geral",
                  style: textTheme.subtitle1.copyWith(
                    color: colorScheme.onPrimary.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 20.0),
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                          color: colorScheme.onBackground,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Pontuação",
                                  style: TextStyle(
                                    color: colorScheme.onPrimary,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                ),
                                Icon(
                                  Icons.more_horiz,
                                  color: colorScheme.onPrimary.withOpacity(0.5),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "547 ",
                                  style: Theme.of(context).textTheme.headline2.copyWith(
                                        color: colorScheme.secondary,
                                        height: 1.2,
                                      ),
                                ),
                                Text(
                                  "51.9% ",
                                  style: TextStyle(color: colorScheme.onPrimary.withOpacity(0.3)),
                                ),
                                SvgPicture.asset("assets/icons/increase.svg")
                              ],
                            ),
                            Text(
                              "Quase lá, continue progredindo",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: colorScheme.onPrimary.withOpacity(0.5),
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            WeeklyChart(),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "7.43",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: colorScheme.secondary,
                                      ),
                                    ),
                                    Text(
                                      "Progresso na última semana",
                                      style: TextStyle(
                                        height: 1.5,
                                        color: colorScheme.onPrimary.withOpacity(0.5),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
