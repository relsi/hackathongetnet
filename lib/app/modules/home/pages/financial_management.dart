import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../shared/utils/constants.dart';
import '../home_controller.dart';

class FinancialManagementPage extends StatefulWidget {
  const FinancialManagementPage({Key key}) : super(key: key);

  @override
  _FinancialManagementPageState createState() =>
      _FinancialManagementPageState();
}

class _FinancialManagementPageState
    extends ModularState<FinancialManagementPage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFF5F4EF),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20, top: 50, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Modular.to.pop();
                        },
                        child: Icon(Icons.arrow_back),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(Icons.more_vert),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Text("Gestão Financeira", style: kHeadingextStyle),
                  Text(
                      "Nessa trilha você irá aprender como fazer a gestão financeira de seu negócio de forma correta e poderá usar esse conhecimento para melhorar a saúde finaceira do seu negócio.",
                      style: kSubtitleTextSyule),
                  SizedBox(height: 5),
                  Row(
                    children: <Widget>[
                      // Todo: Alterar o placeholder para icone de usuarios
                      Placeholder(
                        color: Colors.red,
                        fallbackHeight: 12.0,
                        fallbackWidth: 12.0,
                      ),
                      SizedBox(width: 5),
                      Text("18K"),
                      SizedBox(width: 20),
                      // Todo: Alterar o placeholder para icone de usuarios
                      Placeholder(
                        color: Colors.green,
                        fallbackHeight: 12.0,
                        fallbackWidth: 12.0,
                      ),
                      SizedBox(width: 5),
                      Text("4.8")
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            SizedBox(height: 60),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(34.0),
                    topRight: Radius.circular(34.0),
                  ),
                  color: Colors.white,
                ),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 30.0, left: 20.0, right: 20.0),
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Conteúdo", style: kTitleTextStyle),
                            SizedBox(height: 30),
                            CourseContent(
                              number: "01",
                              duration: 5.35,
                              title: "Módulo 1 - Introdução",
                              isDone: true,
                            ),
                            CourseContent(
                              number: '02',
                              duration: 19.04,
                              title: "Módulo 2 - Fluxo de Caixa",
                              isDone: true,
                            ),
                            CourseContent(
                              number: '03',
                              duration: 15.35,
                              title: "Módulo 3 - Provisionamento ",
                            ),
                            CourseContent(
                              number: '04',
                              duration: 5.35,
                              title: "Módulo 4 - Contabilidade Básica",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BestSellerClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(size.width - 20, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}

class CourseContent extends StatelessWidget {
  final String number;
  final double duration;
  final String title;
  final bool isDone;
  const CourseContent({
    Key key,
    this.number,
    this.duration,
    this.title,
    this.isDone = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: <Widget>[
          Text(
            number,
            style: kHeadingextStyle.copyWith(
              color: kTextColor.withOpacity(.15),
              fontSize: 32,
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$duration min",
                style: TextStyle(
                  color: kTextColor.withOpacity(.5),
                  fontSize: 18,
                ),
              ),
              Text(
                title,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: kSubtitleTextSyule.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kGreenColor.withOpacity(isDone ? 1 : .5),
            ),
            child: Icon(Icons.play_arrow, color: Colors.white),
          )
        ],
      ),
    );
  }
}
