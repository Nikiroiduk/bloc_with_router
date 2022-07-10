import 'package:bloc_with_router/router/app_state_manager.dart';
import 'package:bloc_with_router/screens/blue_screen.dart';
import 'package:bloc_with_router/screens/green_screen.dart';
import 'package:bloc_with_router/screens/red_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  static MaterialPage page(currentScreen) {
    return MaterialPage(
      child: Home(
        currentScreen: currentScreen,
      ),
    );
  }

  const Home({Key? key, required this.currentScreen}) : super(key: key);

  final int currentScreen;

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static List<Widget> screens = <Widget>[
    const RedScreen(),
    const GreenScreen(),
    const BlueScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, appStateManager, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Router test'),
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                const DrawerHeader(child: Text('Header')),
                ListTile(
                  title: const Text('RedScreen'),
                  onTap: () {
                    Provider.of<AppStateManager>(context, listen: false)
                        .goToRedScreen();
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('GreenScreen'),
                  onTap: () {
                    Provider.of<AppStateManager>(context, listen: false)
                        .goToGreenScreen();
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('BlueScreen'),
                  onTap: () {
                    Provider.of<AppStateManager>(context, listen: false)
                        .goToBlueScreen();
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          body: IndexedStack(
            index: widget.currentScreen,
            children: screens,
          ),
        );
      },
    );
  }
}
