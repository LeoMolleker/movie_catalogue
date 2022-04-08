import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({final Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(
    final BuildContext context,
  ) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Home',
        ),
      ),
    );
  }
}
