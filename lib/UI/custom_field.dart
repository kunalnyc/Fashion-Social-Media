import 'package:flutter/cupertino.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key});
  final TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CupertinoTextField(
        controller: _textController,
        placeholder: 'What\'s on your mind',
        suffix: const Icon(
          CupertinoIcons.photo_on_rectangle,
          color: CupertinoColors.systemGrey,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
