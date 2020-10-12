import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'shared/theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'PlayCred',
      themeMode: ThemeMode.light,
      theme: AppTheme.lightThemeData,
      darkTheme: AppTheme.darkThemeData,
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
