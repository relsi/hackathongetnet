import 'score_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'score_page.dart';

class ScoreModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $ScoreController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => ScorePage()),
      ];

  static Inject get to => Inject<ScoreModule>.of();
}
