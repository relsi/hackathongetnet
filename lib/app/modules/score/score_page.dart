import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../shared/widgets/weekly_chart.dart';
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.1),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 21),
                                blurRadius: 53,
                                color: Colors.black.withOpacity(0.05),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              buildTitleWithMoreIcon(),
                              buildCaseNumber(context),
                              Text(
                                "Quase lá, continue progredindo",
                                style: TextStyle(
                                  fontWeight: FontWeight.w200,
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 15),
                              WeeklyChart(),
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  buildInfoTextWithPercentage(
                                    percentage: "6.43",
                                    title: "Progresso na última semana",
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
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

RichText buildInfoTextWithPercentage({String title, String percentage}) {
  return RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: "$percentage% \n",
          style: TextStyle(
            fontSize: 20,
            color: Colors.deepOrangeAccent,
          ),
        ),
        TextSpan(
          text: title,
          style: TextStyle(
            color: Colors.deepOrangeAccent.withOpacity(.6),
            height: 1.5,
          ),
        ),
      ],
    ),
  );
}

Row buildCaseNumber(BuildContext context) {
  return Row(
    children: <Widget>[
      Text(
        "547 ",
        style: Theme.of(context).textTheme.headline2.copyWith(color: Colors.green, height: 1.2),
      ),
      Text(
        "51.9% ",
        style: TextStyle(color: Colors.white30),
      ),
      SvgPicture.asset("assets/icons/increase.svg")
    ],
  );
}

Row buildTitleWithMoreIcon() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        "Pontuação",
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w600,
          fontSize: 15,
        ),
      ),
      SvgPicture.asset("assets/icons/more.svg")
    ],
  );
}

//    AppBar buildDetailsAppBar(BuildContext context) {
//      return AppBar(
//        backgroundColor: Colors.red,
//        elevation: 0,
//        leading: IconButton(
//          icon: Icon(
//            Icons.arrow_back_ios,
//            color: Colors.red,
//          ),
//          onPressed: () {
//            Navigator.pop(context);
//          },
//        ),
//        actions: <Widget>[
//          IconButton(
//            icon: SvgPicture.asset("assets/icons/search.svg"),
//            onPressed: () {},
//          ),
//        ],
//      );
//    }
