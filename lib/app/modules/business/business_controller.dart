import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'business_controller.g.dart';

@Injectable()
class BusinessController = _BusinessControllerBase with _$BusinessController;

abstract class _BusinessControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
