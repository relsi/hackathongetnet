import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final String description;
  final Color color;
  final Function press;

  const CustomCard({
    Key key,
    this.title,
    this.icon,
    this.description,
    this.color,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: 20),
        height: 400,
        width: 270,
        child: Stack(
          children: <Widget>[
            Center(
              child: Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 380,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34),
                    color: colorScheme.onBackground,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 30,
              left: 60,
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color.withOpacity(0.12),
                ),
                child: Icon(
                  icon,
                  color: color,
                  size: 60,
                ),
              ),
            ),
            Positioned(
              top: 200,
              left: 30,
              child: Container(
                width: 210,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      title,
                      style: Theme.of(context).textTheme.title,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16),
                    Text(
                      description,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: colorScheme.onSurface.withOpacity(.65),
                      ),
                    ),
                    SizedBox(height: 15),
                    FlatButton(
                      color: colorScheme.primary,
                      onPressed: () {},
                      child: Text("Saber mais"),
                    )
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
