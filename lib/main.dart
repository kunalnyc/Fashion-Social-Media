import 'package:fashion_media/Screens/home.dart';
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

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       navigationBar:  CupertinoNavigationBar(
//         middle: const  Text('Fashion Media'),
//         trailing:Row(
//           children: <Widget> [
//               IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.add))
//           ],
//         ),
//         backgroundColor: CupertinoColors.white,
//         leading: CircleAvatar(backgroundImage: NetworkImage('https://images.unsplash.com/photo-1529139574466-a303027c1d8b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZmFzaGlvbnxlbnwwfHwwfHx8MA%3D%3D'),),
//       ),
//       child: Container(),
//     );
//   }
// }
