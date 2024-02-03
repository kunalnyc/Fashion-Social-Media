import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePictureWithEditButton extends StatefulWidget {
  const ProfilePictureWithEditButton({super.key});

  @override
  State<ProfilePictureWithEditButton> createState() =>
      _ProfilePictureWithEditButtonState();
}

class _ProfilePictureWithEditButtonState
    extends State<ProfilePictureWithEditButton> {
  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> isSwitched = ValueNotifier<bool>(false);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.grey[200], // Add a light background color
            backgroundImage: const NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6CMh7vqQdDdTr5MnlOCH3WNa8g6Rxj2_Q78dPLnl5ROn9Vhv5bsEs1LqGjb0iYUUbVEg&usqp=CAU'),
          ),
          CupertinoButton(child: const Text('Add People'), onPressed: () {}),
          const CupertinoTextField(
            placeholder: 'Group Name',
          ),
          const CupertinoTextField(
            placeholder: 'Group Description',
          ),
          CupertinoListTile(
            title: const Text('Public Group'),
            trailing: CupertinoSwitch(
              value: isSwitched.value,
              onChanged: (value) {
                isSwitched.value = value;
              },
            ),
          ),
          CupertinoListTile(
            onTap: () {},
            title: const Text(
              'Leave Group',
              style: TextStyle(color: CupertinoColors.systemRed),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(19.0),
            child: CupertinoButton.filled(
                minSize: 20.0,
                child: const Text('Create Group'),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          )
        ],
      ),
    );
  }
}
