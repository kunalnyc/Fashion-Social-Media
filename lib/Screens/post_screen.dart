import 'package:fashion_media/UI/button_bar.dart';
import 'package:fashion_media/UI/button_bar1.dart';
import 'package:fashion_media/UI/custom_field.dart';
import 'package:fashion_media/functions/Text/text_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPost extends StatefulWidget {
  const NewPost({super.key});

  @override
  State<NewPost> createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('New Post'),
      ),
      child: Column(
        children: [
          const Row(
            children: [
              SizedBox(
                height: 230,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Welcome! Add New Post',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
            ],
          ),
          Row(
            children: [
               CustomTextField(),
            ],
          )
        ],
      ),
    );
  }
}
