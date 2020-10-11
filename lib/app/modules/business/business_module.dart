import 'business_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'business_page.dart';

class BusinessModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $BusinessController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => BusinessPage()),
      ];

  static Inject get to => Inject<BusinessModule>.of();
}
