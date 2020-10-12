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

  void config() {
    showDialog(
      context: context,
      builder: (_) {
        final colorScheme = Theme.of(context).colorScheme;
        return AlertDialog(
          backgroundColor: colorScheme.background,
          content: Container(
            height: 250.0,
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
                    // Container(
                    //   height: 100,
                    //   width: 100,
                    //   decoration: BoxDecoration(
                    //     shape: BoxShape.circle,
                    //     //color: colorScheme.primary.withOpacity(0.12),
                    //     image: DecorationImage(
                    //       alignment: Alignment.center,
                    //       image: AssetImage('assets/images/avatar.jpg'),
                    //       fit: BoxFit.cover,
                    //     ),
                    //   ),
                    // ),
                    Center(
                      child: Image(
                        image: AssetImage('assets/images/qrcode.png'),
                        height: 100.0,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Olá Pedro",
                      style: Theme.of(context).textTheme.title,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Compartilhe seu perfil",
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
                      child: Text("COMPARTILHAR"),
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

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final lightColor = Color(0xFF111727);
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorScheme.onBackground,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => config(), // Navigator.of(context).pushNamed("/profile")
                      child: CircleAvatar(
                        backgroundColor: colorScheme.onBackground,
                        backgroundImage: AssetImage('assets/images/avatar.jpg'),
                      ),
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
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xFF3acc9e),
                    image: DecorationImage(
                      alignment: Alignment.bottomRight,
                      image: AssetImage('assets/images/premium.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 15,
                        top: 10,
                        child: GestureDetector(
                          onTap: () {},
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
                      Container(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Venha ser premium", style: textTheme.subtitle1.copyWith(fontWeight: FontWeight.w400)),
                                SizedBox(height: 2.0),
                                Text(
                                  "Conteúdo exclusivo",
                                  style: textTheme.headline5.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: lightColor,
                                  ),
                                ),
                                SizedBox(height: 3.0),
                                FlatButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  color: Colors.white,
                                  textColor: lightColor,
                                  onPressed: () {},
                                  child: Text("Ser pemium"),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
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
                SizedBox(height: 30),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
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
                              style: textTheme.subtitle1.copyWith(
                                color: lightColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${_courses.modules} Modulos',
                              style: TextStyle(
                                color: lightColor.withOpacity(.5),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: 20.0)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
