
import 'package:fashion_media/Screens/chat_screen.dart';
import 'package:fashion_media/Screens/fashion_feed.dart';
import 'package:fashion_media/Screens/group_screen.dart';
import 'package:fashion_media/Screens/heart.dart';
import 'package:fashion_media/Screens/home_page.dart';
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
    return CupertinoPageScaffold(
      child: CupertinoTabScaffold(
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
              icon: Icon(CupertinoIcons.at),
              label: 'Mentions',
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
              page =   const HomePage1();
              break;
            case 1:
              page = const GroupScreen();
              break;
            case 2:
              page = const FashionFeed();
              break;
            case 3:
              page = const SvaedHeartScreen();
              break;
            case 4:
              page = const ChatScreen();
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
      ),
    );
  }
}
