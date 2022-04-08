import 'package:flutter/material.dart';

import 'app_router.dart';
import 'bootstrapper.dart';
import 'named_routes.dart';

class App extends StatefulWidget {
  const App({
    required this.bootstrapper,
    final Key? key,
  }) : super(key: key);

  final IBootstrapper bootstrapper;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((final _) async {
      await widget.bootstrapper.bootstrap();
    });
  }

  @override
  Widget build(
    final BuildContext context,
  ) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: NamedRoutes.homePage,
      routes: AppRouter.routes(
        bootstrapper: widget.bootstrapper,
      ),
    );
  }

  @override
  void dispose() {
    widget.bootstrapper.dispose();
    super.dispose();
  }
}
