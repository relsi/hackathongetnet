import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:we_slide/we_slide.dart';
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
    final size = MediaQuery.of(context).size;
    final controller = WeSlideController();

    return Scaffold(
      body: WeSlide(
        controller: controller,
        parallax: true,
        transformScale: true,
        bodyBorderRadiusBegin: 0.0,
        bodyBorderRadiusEnd: 40.0,
        panelBorderRadiusBegin: 40.0,
        panelBorderRadiusEnd: 40.0,
        transformScaleEnd: 0.85,
        panelMinSize: 300.0,
        panelMaxSize: size.height - 120,
        panelBackground: widget.course.colour,
        body: Body(course: widget.course),
        panel: Panel(course: widget.course),
      ),
    );
  }
}

class Body extends StatelessWidget {
  final Courses course;
  const Body({Key key, this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final lightColor = Colors.white; // Color(0xFF111727)
    return Container(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: course.colour,
        ),
        child: Column(
          children: [
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
                    course.title,
                    style: textTheme.headline5.copyWith(color: lightColor, fontWeight: FontWeight.bold, height: 1),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    course.subtitle,
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
          ],
        ),
      ),
    );
  }
}

class Panel extends StatelessWidget {
  final Courses course;
  const Panel({Key key, this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    void premium() {
      showDialog(
        context: context,
        builder: (_) {
          final colorScheme = Theme.of(context).colorScheme;
          return AlertDialog(
            backgroundColor: colorScheme.background,
            content: Container(
              height: 300.0,
              width: 100.0,
              child: Stack(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Positioned(
                    right: 0,
                    top: 0,
                    child: GestureDetector(
                      onTap: () => Navigator.pop(_),
                      child: Container(
                        width: 20,
                        height: 20,
                        child: Center(
                          child: Icon(
                            Icons.close,
                            color: colorScheme.onPrimary.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: colorScheme.primary.withOpacity(0.12),
                        ),
                        child: Icon(
                          Icons.lock,
                          color: colorScheme.primary,
                          size: 60,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Conteúdo exclusivo",
                        style: Theme.of(context).textTheme.title,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Aproveite todas as vantagens de ser premium",
                        maxLines: 4,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: colorScheme.onSurface.withOpacity(.65),
                        ),
                      ),
                      SizedBox(height: 15),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: colorScheme.primary,
                        textColor: Colors.white,
                        onPressed: () {},
                        child: Text("VER PLANOS"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

    return Container(
      color: colorScheme.onBackground,
      child: Container(
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 30,
                        height: 5,
                        decoration: BoxDecoration(
                          color: colorScheme.onPrimary.withOpacity(0.5),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: course.lessons.length,
                      itemBuilder: (BuildContext context, int index) {
                        final _lesson = course.lessons[index];

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
                            onTap: () => _lesson.completed ? Navigator.of(context).pushNamed("/video", arguments: _lesson) : premium(),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _lesson.completed ? colorScheme.primary : colorScheme.onPrimary.withOpacity(0.2),
                              ),
                              child: Icon(
                                _lesson.completed ? Icons.play_arrow : Icons.lock,
                                color: _lesson.completed ? Colors.white : colorScheme.onPrimary.withOpacity(0.2),
                              ),
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
    );
  }
}
