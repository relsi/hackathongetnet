import 'course_controller.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'course_page.dart';
import 'pages/course_details.dart';

class CourseModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $CourseController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => CoursePage()),
        ModularRouter("/details", child: (_, args) => CourseDetails(course: args.data)),
      ];

  static Inject get to => Inject<CourseModule>.of();
}
