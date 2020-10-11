import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'widgets/weekly_chart.dart';
import 'widgets/info_card.dart';
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
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.0),
                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: <Widget>[
                //     CircleAvatar(
                //       backgroundImage: NetworkImage(controller.avatar),
                //     ),
                //   ],
                // ),
                SizedBox(height: 12),
                Text("Score", style: textTheme.headline5.copyWith(fontWeight: FontWeight.w600)),
                Text(
                  "Acompanhe sua pontuação geral",
                  style: textTheme.subtitle1.copyWith(
                    color: colorScheme.onPrimary.withOpacity(0.5),
                    height: 1.4,
                  ),
                ),
                SizedBox(height: 20.0),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: <Widget>[
                          Wrap(
                            runSpacing: 20,
                            spacing: 20,
                            children: <Widget>[
                              InfoCard(
                                title: "Conhecimento de Mercado",
                                iconColor: Color(0xFF5856D6),
                                effectedNum: 1062,
                                icon: Icons.search,
                                press: () {},
                              ),
                              InfoCard(
                                title: "Gestão Financeira",
                                iconColor: Color(0xFFFF2D55),
                                icon: Icons.pie_chart,
                                effectedNum: 75,
                                press: () {},
                              ),
                              InfoCard(
                                title: "Gestão Operacional",
                                iconColor: Color(0xFF50E3C2),
                                icon: Icons.store,
                                effectedNum: 689,
                                press: () {},
                              ),
                              InfoCard(
                                title: "Gestão de Marketing",
                                iconColor: Color(0xFFFF8C00),
                                icon: Icons.people,
                                effectedNum: 75,
                                press: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 25,
                      ),
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
                                  color: colorScheme.onSurface,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                              Icon(
                                Icons.more_horiz,
                                color: colorScheme.onSurface.withOpacity(0.5),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "547",
                                style: Theme.of(context).textTheme.headline2.copyWith(color: Color(0xFF3FDFAE), height: 1.2),
                              ),
                              Text(
                                "51.9%",
                                style: TextStyle(color: colorScheme.onSurface.withOpacity(0.5)),
                              ),
                              //Icon(Icons.thumb_up)
                            ],
                          ),
                          Text(
                            "Quase lá, continue progredindo",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: colorScheme.onSurface.withOpacity(0.8),
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 15),
                          WeeklyChart(),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "6.43",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: colorScheme.onSurface.withOpacity(0.8),
                                    ),
                                  ),
                                  Text(
                                    "Progresso na última semana",
                                    style: TextStyle(
                                      color: colorScheme.onSurface.withOpacity(0.5),
                                      height: 1.5,
                                    ),
                                  ),
                                ],
                              )
                              // RichText(
                              //   text: TextSpan(
                              //     children: [
                              // TextSpan(
                              //   text: "6.43",
                              //   style: TextStyle(
                              //     fontSize: 20,
                              //     color: Colors.deepOrangeAccent,
                              //   ),
                              // ),
                              // TextSpan(
                              //   text: "Progresso na última semana",
                              //   style: TextStyle(
                              //     color: Colors.deepOrangeAccent.withOpacity(.6),
                              //     height: 1.5,
                              //   ),
                              // ),
                              //     ],
                              //   ),
                              // )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
