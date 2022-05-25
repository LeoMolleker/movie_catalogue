import 'package:flutter/widgets.dart';

import '../ui/pages/home/home_page.dart';
import 'named_routes.dart';

class AppRouter {
  static Map<String, WidgetBuilder> routes() {
    return {
      NamedRoutes.homePage: (
        final BuildContext context,
      ) =>
          const HomePage(),
    };
  }
}
