import 'package:fashion_media/UI/button_bar.dart';
import 'package:fashion_media/UI/button_bar1.dart';
import 'package:flutter/cupertino.dart';

class FashionScreen extends StatefulWidget {
  const FashionScreen({super.key});

  @override
  State<FashionScreen> createState() => _FashionScreenState();
}

// ignore: unused_element
final TextEditingController _textController = TextEditingController();

class _FashionScreenState extends State<FashionScreen> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: true,
      ),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 250,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Welcome! Add New Fashion👕\n To Your Closet',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
            ],
          ),
          CustomButtonBar(),
          CustomButtonBar1(),
        ],
      ),
    );
  }
}
