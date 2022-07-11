import 'package:bloc_with_router/router/app_screens.dart';
import 'package:flutter/material.dart';

class BlueScreen extends StatelessWidget {
  const BlueScreen({Key? key}) : super(key: key);

  static MaterialPage page() {
    return const MaterialPage(
      name: AppScreens.blueName,
      child: BlueScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[300],
    );
  }
}
