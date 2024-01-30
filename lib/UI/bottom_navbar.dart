import 'package:flutter/cupertino.dart';

class CupertinoTabBars extends StatefulWidget {
  const CupertinoTabBars({
    super.key,
  });

  @override
  State<CupertinoTabBars> createState() => _CupertinoTabBarsState();
}

class _CupertinoTabBarsState extends State<CupertinoTabBars> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        activeColor: CupertinoColors.systemPurple,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bag),
            label: 'My Closet',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.group),
            label: 'Groups',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.wind_snow),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bubble_left_bubble_right),
            label: 'Chats',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        late Widget page;

        switch (index) {
          case 0:
            page = HomePage();
            break;
          case 1:
            page = DiscoverPage();
            break;
          case 2:
            page = FriendsPage();
            break;
          case 3:
            page = KeypadPage();
            break;
          default:
            page = Container(); // Placeholder, you can change this
            break;
        }

        return CupertinoTabView(
          builder: (BuildContext context) {
            return Navigator(
              onGenerateRoute: (RouteSettings settings) {
                return CupertinoPageRoute(
                  builder: (BuildContext context) => page,
                  settings: settings,
                );
              },
            );
          },
        );
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Home'),
      ),
      child: Center(
        child: Text('Home Content'),
      ),
    );
  }
}

class DiscoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Discover'),
      ),
      child: Center(
        child: Text('Discover Content'),
      ),
    );
  }
}

class FriendsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Friends'),
      ),
      child: Center(
        child: Text('Friends Content'),
      ),
    );
  }
}

class KeypadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Keypad'),
      ),
      child: Center(
        child: Text('Keypad Content'),
      ),
    );
  }
}
