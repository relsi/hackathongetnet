import 'credit_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'credit_page.dart';

class CreditModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $CreditController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => CreditPage()),
      ];

  static Inject get to => Inject<CreditModule>.of();
}
