import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'credit_controller.g.dart';

@Injectable()
class CreditController = _CreditControllerBase with _$CreditController;

abstract class _CreditControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
