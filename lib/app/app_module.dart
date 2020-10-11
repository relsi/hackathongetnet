import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:play_cred/app/app_widget.dart';
import 'package:play_cred/app/modules/home/home_module.dart';

import 'app_controller.dart';
import 'modules/login/login_module.dart';
import 'modules/signup/signup_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: LoginModule()),
        ModularRouter("/signup", module: SignupModule()),
        ModularRouter("/home", module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
