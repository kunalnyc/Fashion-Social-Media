import 'package:flutter/cupertino.dart';

class TextBar extends StatelessWidget {
  const TextBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 45.0, left: 17.0),
      child: Text(
        'Add New Post',
        style: TextStyle(
          color: CupertinoColors.black,
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
