import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../model/category.dart';

class CourseDetails extends StatefulWidget {
  final Category course;
  const CourseDetails({Key key, @required this.course}) : super(key: key);

  @override
  _CourseDetailsState createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: widget.course.colour,
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
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Text(
                    widget.course.name,
                    style: textTheme.headline5.copyWith(color: Colors.white, fontWeight: FontWeight.bold, height: 1),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    widget.course.subtitle,
                    style: textTheme.subtitle1.copyWith(color: Colors.white.withOpacity(0.8)),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.people,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "18K",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 20),
                      Icon(Icons.play_arrow, color: Colors.white),
                      SizedBox(width: 5),
                      Text(
                        "4.8",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                  color: colorScheme.background,
                ),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("Conteúdo", style: textTheme.headline6),
                            SizedBox(height: 20),
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
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: <Widget>[
          Text(
            number,
            style: textTheme.headline6.copyWith(
              color: colorScheme.onPrimary.withOpacity(.25),
              fontSize: 32,
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: textTheme.subtitle1.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
              Text(
                "$duration min",
                style: TextStyle(
                  color: colorScheme.onPrimary.withOpacity(.5),
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
              color: colorScheme.primary.withOpacity(isDone ? 1 : .5),
            ),
            child: Icon(Icons.play_arrow, color: Colors.white),
          )
        ],
      ),
    );
  }
}
