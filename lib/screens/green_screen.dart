import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../router/app_state_manager.dart';

class GreenScreen extends StatelessWidget {
  const GreenScreen({Key? key}) : super(key: key);

  static MaterialPage page() {
    return const MaterialPage(
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
