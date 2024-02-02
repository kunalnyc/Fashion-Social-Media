import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePreview extends StatelessWidget {
  final PickedFile pickedFile;//FileAccess

  const ImagePreview(this.pickedFile, {super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Image Preview'),
      ),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: ClipRect(
          child: Image.file(
            File(pickedFile.path), // Access the path property directly
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
