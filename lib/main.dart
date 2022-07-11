import 'package:bloc_with_router/router/app_router.dart';
import 'package:bloc_with_router/router/app_state_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const BLoCWithRouter());
}

class BLoCWithRouter extends StatefulWidget {
  const BLoCWithRouter({Key? key}) : super(key: key);

  @override
  State<BLoCWithRouter> createState() => _BLoCWithRouterState();
}

class _BLoCWithRouterState extends State<BLoCWithRouter> {
  final _appStateManager = AppStateManager();

  late AppRouter _appRouter;

  @override
  void initState() {
    super.initState();
    _appRouter = AppRouter(
      appStateManager: _appStateManager,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => _appStateManager,
        ),
      ],
      child: MaterialApp(
        home: Router(
          routerDelegate: _appRouter,
          backButtonDispatcher: RootBackButtonDispatcher(),
        ),
      ),
    );
  }
}
