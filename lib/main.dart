import 'package:fashion_media/Screens/welcome_screen.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const CupertinoApp(
        debugShowCheckedModeBanner: false,
        title: 'Fashion Media',
        theme: CupertinoThemeData(brightness: Brightness.light),
        home: WelcomePage());
  }
}

