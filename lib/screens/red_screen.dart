import 'package:bloc_with_router/router/app_screens.dart';
import 'package:flutter/material.dart';

class RedScreen extends StatelessWidget {
  const RedScreen({Key? key}) : super(key: key);

  static MaterialPage page() {
    return const MaterialPage(
      name: AppScreens.redName,
      child: RedScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[300],
    );
  }
}
