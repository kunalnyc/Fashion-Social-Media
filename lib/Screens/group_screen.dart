import 'package:fashion_media/Data/group_data.dart';
import 'package:fashion_media/Screens/Closet/fashion.dart';
import 'package:fashion_media/Screens/create_group.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroupScreen extends StatefulWidget {
  const GroupScreen({
    super.key,
  });

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
              onTap: () => Navigator.of(context).push(
                  CupertinoPageRoute(builder: (context) => const NewGroup())),
              leading: const Icon(
                CupertinoIcons.person_add,
                color: CupertinoColors.black,
              ),
              title: const Text('New Group'),
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                'Public Groups',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            //Calling group interface class
            //Droup Details & Joi Button
            GroupInterface()
          ],
        ),
      ),
    );
  }
}
