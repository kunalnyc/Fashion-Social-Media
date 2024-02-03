import 'package:fashion_media/functions/group_photo.dart';
import 'package:flutter/cupertino.dart';

class NewGroup extends StatefulWidget {
  const NewGroup({super.key});

  @override
  State<NewGroup> createState() => _NewGroupState();
}

class _NewGroupState extends State<NewGroup> {
  @override
  Widget build(BuildContext context) {
    return   const CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Create Group'),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 80,),
              Center(
                child: ProfilePictureWithEditButton()
              ),
            ],
          ),
        ));
  }
}
