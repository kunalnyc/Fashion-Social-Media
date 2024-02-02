import 'package:fashion_media/functions/image_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtonBar extends StatelessWidget {
  const CustomButtonBar({super.key,});

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.start,
      children: [
        Material(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.transparent,
          child: TextButton(
            onPressed: () {
             const PickImageFromGallery().pickAndNavigate(context);

            },
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
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
              child: Text(
                "New Fashion",
                style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.light
                      ? CupertinoColors.darkBackgroundGray
                      : CupertinoColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
