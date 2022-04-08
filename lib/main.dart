import 'package:flutter/material.dart';

import 'src/core/app.dart';
import 'src/core/bootstrapper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    App(
      bootstrapper: Bootstrapper(),
    ),
  );
}
