import 'package:fashion_media/functions/message_screen.dart';
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
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            CupertinoListTile(
              leadingSize: 50.0,
              leading: const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1629374029669-aab2f060553b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGZhc2hpb24lMjBtb2RlbHxlbnwwfHwwfHx8MA%3D%3D'),
              ),
              title: const Text('Sofia'),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(CupertinoIcons.camera)),
              subtitle: const Text(
                  'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. '),
            ),
            const SizedBox(
              height: 10,
            ),
            CupertinoListTile(
              leadingSize: 50.0,
              leading: const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1627577279497-4b24bf1021b6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb24lMjBtb2RlbHxlbnwwfHwwfHx8MA%3D%3D'),
              ),
              title: const Text('Natasha'),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(CupertinoIcons.camera)),
              subtitle: const Text(
                  'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. '),
            ),
            const SizedBox(
              height: 10,
            ),
            CupertinoListTile(
              leadingSize: 50.0,
              leading: const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1627292441194-0280c19e74e4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGZhc2hpb24lMjBtb2RlbHxlbnwwfHwwfHx8MA%3D%3D'),
              ),
              title: const Text('Amanda'),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(CupertinoIcons.camera)),
              subtitle: const Text(
                  'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. '),
            )
          ],
        ),
      ),
    );
  }
}
