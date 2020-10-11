import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../model/category.dart';

class CourseDetails extends StatefulWidget {
  final Courses course;
  const CourseDetails({Key key, @required this.course}) : super(key: key);

  @override
  _CourseDetailsState createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final lightColor = Colors.white; // Color(0xFF111727)
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
                          color: lightColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.more_vert,
                          color: lightColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Text(
                    widget.course.title,
                    style: textTheme.headline5.copyWith(color: lightColor, fontWeight: FontWeight.bold, height: 1),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    widget.course.subtitle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                    style: textTheme.subtitle1.copyWith(color: lightColor.withOpacity(0.8)),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.people,
                        color: lightColor.withOpacity(0.8),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "18K",
                        style: TextStyle(color: lightColor.withOpacity(0.8)),
                      ),
                      SizedBox(width: 20),
                      Icon(Icons.play_arrow, color: lightColor.withOpacity(0.8)),
                      SizedBox(width: 5),
                      Text(
                        "4.8",
                        style: TextStyle(color: lightColor.withOpacity(0.8)),
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("Conteúdo", style: textTheme.headline6),
                          SizedBox(height: 10),
                          Expanded(
                            child: ListView.builder(
                              physics: BouncingScrollPhysics(),
                              itemCount: widget.course.lessons.length,
                              itemBuilder: (BuildContext context, int index) {
                                final _lesson = widget.course.lessons[index];

                                return ListTile(
                                  leading: Text(
                                    "0$index",
                                    style: textTheme.headline6.copyWith(
                                      color: colorScheme.onPrimary.withOpacity(.25),
                                      fontSize: 32,
                                    ),
                                  ),
                                  title: Text(
                                    _lesson.title,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: textTheme.subtitle1.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                  ),
                                  subtitle: Text(
                                    _lesson.duration,
                                    style: TextStyle(
                                      color: colorScheme.onPrimary.withOpacity(.5),
                                      fontSize: 14,
                                    ),
                                  ),
                                  trailing: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pushNamed("/video", arguments: _lesson);
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: colorScheme.primary.withOpacity(_lesson.completed ? 1 : .5),
                                      ),
                                      child: Icon(Icons.play_arrow, color: Colors.white),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
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
