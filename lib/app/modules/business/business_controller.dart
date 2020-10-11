import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'business_controller.g.dart';

@Injectable()
class BusinessController = _BusinessControllerBase with _$BusinessController;

abstract class _BusinessControllerBase with Store {
  String avatar =
      "https://f.i.uol.com.br/fotografia/2019/12/16/15765188985df7c4f298688_1576518898_3x2_md.jpg"; // Getnet CEO

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
