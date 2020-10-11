import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/utils/constants.dart';
import 'home_controller.dart';
import 'model/category.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 12, top: 50, right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                CircleAvatar(
                  radius: 25.0,
                  backgroundImage: AssetImage("assets/images/avatar.png"),
                ),
              ],
            ),
            SizedBox(height: 12),
            Text("Olá Luciano,", style: kHeadingextStyle),
            SizedBox(height: 5),
            Text("Vamos começar a sua jornada de conhecimento sobre negócios",
                style: kSubheadingextStyle),
            SizedBox(height: 25),
            Expanded(
              child: StaggeredGridView.countBuilder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(0),
                crossAxisCount: 2,
                itemCount: categories.length,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Modular.link.pushNamed(categories[index].page);
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: categories[index].colour,
                        image: DecorationImage(
                          alignment: Alignment.bottomCenter,
                          image: AssetImage('assets/images/' +
                              categories[index].slug +
                              '.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            categories[index].name,
                            style: kTitleTextStyle,
                          ),
                          Text(
                            '${categories[index].numOfCourses} Modulos',
                            style: TextStyle(
                              color: kTextColor.withOpacity(.5),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
