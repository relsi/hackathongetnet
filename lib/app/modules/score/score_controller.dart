import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'score_controller.g.dart';

@Injectable()
class ScoreController = _ScoreControllerBase with _$ScoreController;

abstract class _ScoreControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
