import 'package:fashion_media/Data/group_data.dart';
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
            onPressed: () {
              _showActionSheet(context);
            },
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
              onTap: () => _showActionSheet(context),
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

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: const Text('Manage Groups'),
        message: const Text(
            'Create Groups add & invite peoples, leave silently, Create Communities, borrow fashionable things!'),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            onPressed: () async {
              await Future.delayed(const Duration(seconds: 0));
              // ignore: use_build_context_synchronously
              Navigator.pop(context);
              // ignore: use_build_context_synchronously
              Navigator.of(context).push(
                  CupertinoPageRoute(builder: (context) => const NewGroup()));
            },
            child: const Text('New Group'),
          ),
          CupertinoActionSheetAction(
            //  isDefaultAction: true,
            onPressed: () {
              // await Future.delayed(const Duration(seconds: 0));
              // // ignore: use_build_context_synchronously
              // Navigator.pop(context);
              // // ignore: use_build_context_synchronously
              // Navigator.of(context).push(CupertinoPageRoute(
              //     builder: (context) => const FashionScreen()));
            },
            child: const Text('New Community'),
          ),

          // CupertinoActionSheetAction(
          //   isDestructiveAction: true,
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          //   child: const Text('Close'),
          // ),
        ],
      ),
    );
  }
}
