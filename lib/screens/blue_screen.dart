import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../router/app_state_manager.dart';

class BlueScreen extends StatelessWidget {
  const BlueScreen({Key? key}) : super(key: key);

  static MaterialPage page() {
    return const MaterialPage(
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
