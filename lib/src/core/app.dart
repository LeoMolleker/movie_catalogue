import 'package:flutter/material.dart';

import 'app_router.dart';
import 'named_routes.dart';

class App extends StatelessWidget {
  const App({
    final Key? key,
  }) : super(key: key);

  @override
  Widget build(
      final BuildContext context,
      ) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: NamedRoutes.homePage,
      routes: AppRouter.routes(),
    );
  }

}
