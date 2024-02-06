import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePreview extends StatefulWidget {
  final PickedFile pickedFile; //FileAccess

  const ImagePreview(this.pickedFile, {super.key});

  @override
  State<ImagePreview> createState() => _ImagePreviewState();
}

class _ImagePreviewState extends State<ImagePreview> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Image Preview'),
        trailing: TextButton(
          onPressed: () {
            _saveImage(context);
          },
          child: const Text('Save'),
        ),
      ),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: ClipRect(
          child: Image.file(
            File(widget.pickedFile.path),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  void _saveImage(BuildContext context) async {
    // Navigate to SavedImagePage and wait for the result
    String? savedImagePath = await Navigator.of(context).push(
      CupertinoPageRoute(
        builder: (context) =>
            SavedImagePage(savedImage: File(widget.pickedFile.path)),
      ),
    );

    // Handle the saved image path
    if (savedImagePath != null) {
      // Pass the saved image path directly to the homepage
      // ignore: use_build_context_synchronously
      Navigator.pop(context, savedImagePath);
    } else {
      // Handle if the user canceled or any other scenario
      // print('Save operation canceled or failed');
    }
  }

  void _saveImages() {
    Navigator.pop(context,
        widget.pickedFile); // Pass the PickedFile back to the home screen
  }
}

class SavedImagePage extends StatelessWidget {
  final File savedImage;

  const SavedImagePage({required this.savedImage, super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Saved Image Page'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.file(savedImage),
            const SizedBox(height: 20),
            CupertinoButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to Image Preview'),
            ),
          ],
        ),
      ),
    );
  }
}
