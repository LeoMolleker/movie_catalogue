import 'package:flutter/widgets.dart';
import 'package:movies_catalogue/src/core/bootstrapper.dart';
import 'package:movies_catalogue/src/core/named_routes.dart';

import '../ui/pages/home/home_page.dart';

class AppRouter {
  static Map<String, WidgetBuilder> routes({
    required IBootstrapper bootstrapper,
  }) {
    return {
      NamedRoutes.homePage: (BuildContext context) => const HomePage(),
    };
  }
}
