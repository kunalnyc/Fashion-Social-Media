import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostButton extends StatelessWidget {
  const PostButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.start,
      children: [
        Material(
          borderRadius: BorderRadius.circular(10.0),
          color: CupertinoColors.tertiaryLabel,
        )
      ],
    );
  }
}