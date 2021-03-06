import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  final Function onTap;
  final int selectedIndex;

  const CustomBottomBar({
    Key key,
    @required this.onTap,
    @required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          title: Text('INICIO'),
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.star),
          icon: Icon(Icons.star_border),
          title: Text('SCORE'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.store),
          title: Text('MEU NEGÓCIO'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pie_chart),
          title: Text('CRÉDITO'),
        ),
      ],
      currentIndex: selectedIndex,
      backgroundColor: colorScheme.surface,
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 10,
      selectedItemColor: colorScheme.primary,
      unselectedFontSize: 10,
      unselectedItemColor: colorScheme.onPrimary.withOpacity(0.3),
      onTap: onTap,
    );
  }
}
