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
          color: Colors.transparent,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
                side: BorderSide(
                  color: Theme.of(context).brightness == Brightness.light
                      ? CupertinoColors.darkBackgroundGray
                      : CupertinoColors.white,
                  width: 1.5,
                ),
              ),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
              child: Text(
                'Post',
                style: TextStyle(
                    color: Theme.of(context).brightness == Brightness.light
                        ? CupertinoColors.darkBackgroundGray
                        : CupertinoColors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
