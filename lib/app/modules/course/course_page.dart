import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'course_controller.dart';
import 'model/category.dart';

class CoursePage extends StatefulWidget {
  final String title;
  const CoursePage({Key key, this.title = "Course"}) : super(key: key);

  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends ModularState<CoursePage, CourseController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.menu,
                    color: colorScheme.onPrimary,
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(controller.avatar),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Text("Olá Pedro,", style: textTheme.headline5.copyWith(fontWeight: FontWeight.w600)),
              Text(
                "Encontre o curso que deseja aprender",
                style: textTheme.subtitle1.copyWith(
                  color: colorScheme.onPrimary.withOpacity(0.5),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Cursos", style: textTheme.headline6),
                  Text(
                    "Ver todos",
                    style: textTheme.subtitle1.copyWith(color: colorScheme.primary),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: controller.courses.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    final Courses _courses = controller.courses[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed("/details", arguments: _courses);
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: _courses.colour,
                          image: DecorationImage(
                            alignment: Alignment.bottomCenter,
                            image: AssetImage('assets/images/' + _courses.slug + '.png'),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              _courses.title,
                              style: textTheme.subtitle1.copyWith(color: Colors.white),
                            ),
                            Text(
                              '${_courses.modules} Modulos',
                              style: TextStyle(
                                color: Colors.white.withOpacity(.5),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              //SizedBox(height: 20.0)
            ],
          ),
        ),
      ),
    );
  }
}
