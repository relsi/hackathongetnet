import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';
import 'home_page.dart';
import 'pages/financial_management.dart';
import 'pages/market_knowledge.dart';
import 'pages/operational_management.dart';
import 'pages/marketing_management.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $HomeController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
        ModularRouter('/financial_management',
            child: (_, args) => FinancialManagementPage()),
        ModularRouter('/market_knowledge',
            child: (_, args) => MarketknowledgePage()),
        ModularRouter('/operational_management',
            child: (_, args) => OperationalManagementPage()),
        ModularRouter('/marketing_management',
            child: (_, args) => MarketingManagementPage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
