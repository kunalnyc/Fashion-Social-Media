import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.person_add,
                color: CupertinoColors.black,
                size: 20,
              )),
          middle: const Text('Chat'),
        ),
        child: Container());
  }
}
