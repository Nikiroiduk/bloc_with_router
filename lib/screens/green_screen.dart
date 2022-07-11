import 'package:bloc_with_router/router/app_router.dart';
import 'package:bloc_with_router/router/app_screens.dart';
import 'package:flutter/material.dart';

class GreenScreen extends StatelessWidget {
  const GreenScreen({Key? key}) : super(key: key);

  static MaterialPage page() {
    return const MaterialPage(
      name: AppScreens.greenName,
      child: GreenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[300],
    );
  }
}
