import 'package:fashion_media/Screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtonBar3 extends StatelessWidget {
  const CustomButtonBar3({
    super.key,
  });

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
              Navigator.of(context).pushReplacement(
                  CupertinoPageRoute(builder: (context) => const HomePage()));
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
              child: Text(
                "Welcome",
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
