import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroupScreen extends StatefulWidget {
  const GroupScreen({Key? key}) : super(key: key);

  @override
  State<GroupScreen> createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Groups'),
        trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.add,
              color: CupertinoColors.black,
              size: 20,
            )),
        backgroundColor: CupertinoColors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
              child: Container(), // Replace with your content or remove it
            ),
            CupertinoListTile(
              onTap: () {},
              leading: const Icon(
                CupertinoIcons.person_add,
                color: CupertinoColors.black,
              ),
              title: const Text('New Group'),
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text('Public Groups'),
            )
          ],
        ),
      ),
    );
  }
}
