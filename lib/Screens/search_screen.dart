import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        automaticallyImplyLeading: true,
        middle: CupertinoTextField(
          prefix: Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              CupertinoIcons.search,
              color: CupertinoColors.black,
              size: 20,
            ),
          ),
          placeholder: 'Search Fashion',
        ),
      ),
      child: Center(
        child: Lottie.network(
            'https://lottie.host/744ad839-6060-478a-97ce-6c3fea269c61/FUAzAmnDDB.json'),
      ),
    );
  }
}
