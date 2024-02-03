import 'dart:io';

import 'package:flutter/cupertino.dart';

class SavedImagePage extends StatelessWidget {
  final File savedImage;

  // ignore: use_super_parameters
  const SavedImagePage(this.savedImage, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Image.file(savedImage),
      ),
    );
  }
}
