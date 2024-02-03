import 'package:fashion_media/UI/Buttons/button_bar4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SvaedHeartScreen extends StatefulWidget {
  const SvaedHeartScreen({super.key});

  @override
  State<SvaedHeartScreen> createState() => _SvaedHeartScreenState();
}

class _SvaedHeartScreenState extends State<SvaedHeartScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
            middle: const Text('Heart'),
            trailing: IconButton(
              onPressed: () {
                _showPopupMenu(context);
              },
              icon: const Icon(
                CupertinoIcons.ellipsis_vertical,
                color: CupertinoColors.black,
                size: 20,
              ),
            )),
        child: SingleChildScrollView(
            // scrollDirection: Axis.horizontal,
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'My Closets',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1611048268330-53de574cae3b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Q2xvc2V0fGVufDB8fDB8fHww',
                            fit: BoxFit.cover,
                            width: 200,
                            height: 150,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            CustomButtonBar4(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1585914924626-15adac1e6402?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Q2xvc2V0fGVufDB8fDB8fHww',
                            fit: BoxFit.cover,
                            width: 200,
                            height: 150,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            CustomButtonBar4(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1584467331215-a960b66c222b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Q2xvc2V0fGVufDB8fDB8fHww',
                            fit: BoxFit.cover,
                            width: 200,
                            height: 150,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            CustomButtonBar4(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        )));

    // A);
  }

  void _showPopupMenu(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        actions: <Widget>[
          CupertinoActionSheetAction(
            onPressed: () {
              // Handle action 1
              Navigator.pop(context);
            },
            child: const Text('My Collections'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              // Handle action 1
              Navigator.pop(context);
            },
            child: const Text('Create Closet'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              // Handle action 2
              Navigator.pop(context);
            },
            child: const Text('Hearts'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              // Handle action 2
              Navigator.pop(context);
            },
            child: const Text('Fashion Borrowed'),
          ),
          // Add more actions as needed
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            // Handle cancel
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        ),
      ),
    );
  }
}
