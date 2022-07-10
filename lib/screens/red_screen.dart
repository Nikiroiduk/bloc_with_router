import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../router/app_state_manager.dart';

class RedScreen extends StatelessWidget {
  const RedScreen({Key? key}) : super(key: key);

  static MaterialPage page() {
    return const MaterialPage(
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
