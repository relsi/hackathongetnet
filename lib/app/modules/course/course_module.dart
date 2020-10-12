import 'package:play_cred/app/modules/profile/profile_module.dart';

import 'course_controller.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'course_page.dart';
import 'pages/course_details.dart';
import 'pages/video_page.dart';

class CourseModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $CourseController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => CoursePage()),
        ModularRouter("/details", child: (_, args) => CourseDetails(course: args.data)),
        ModularRouter("/video", child: (_, args) => VideoPage(lesson: args.data)),
        ModularRouter("/profile", module: ProfileModule()),
      ];

  static Inject get to => Inject<CourseModule>.of();
}
