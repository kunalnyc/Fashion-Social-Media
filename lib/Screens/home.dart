import 'package:fashion_media/UI/bottom_navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      navigationBar: CupertinoNavigationBar(
        middle: const Text(
          'Fashion Media',
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.add,
            color: CupertinoColors.systemPurple,
          ),
        ),
        backgroundColor: CupertinoColors.white,
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1529139574466-a303027c1d8b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZmFzaGlvbnxlbnwwfHwwfHx8MA%3D%3D'),
        ),
      ),
      child: const CupertinoTabBars(),
    );
  }
}