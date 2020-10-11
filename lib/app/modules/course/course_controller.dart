import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'course_controller.g.dart';

@Injectable()
class CourseController = _CourseControllerBase with _$CourseController;

abstract class _CourseControllerBase with Store {
  @observable
  String avatar = "https://f.i.uol.com.br/fotografia/2019/12/16/15765188985df7c4f298688_1576518898_3x2_md.jpg"; // Getnet CEO
}
