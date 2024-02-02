import 'package:fashion_media/functions/image_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PickImageFromGallery extends StatefulWidget {
  const PickImageFromGallery({
    super.key,
  });

  Future<void> pickAndNavigate(BuildContext context) async {
    final pickedImage = await _pickImage();
    if (pickedImage != null) {
      // ignore: use_build_context_synchronously
      Navigator.of(context).push(
        CupertinoPageRoute(
          builder: (context) => ImagePreview(pickedImage as PickedFile),
        ),
      );
    } else {
      await showDialog(
        // ignore: use_build_context_synchronously
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            content: const Text('No Image Selected'),
            actions: [
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  Future<XFile?> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    return pickedFile;
  }

  @override
  State<PickImageFromGallery> createState() => _PickImageFromGalleryState();
}

class _PickImageFromGalleryState extends State<PickImageFromGallery> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
