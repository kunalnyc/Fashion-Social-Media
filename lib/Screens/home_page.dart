import 'package:fashion_media/Screens/Closet/fashion.dart';
import 'package:fashion_media/Screens/post_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String name = "Emersion";

  @override
  Widget build(BuildContext context) {
    bool isHeart = false;
    return CupertinoPageScaffold(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 24),
                  child: SizedBox(
                    width: 200, // Adjust the width according to your needs
                    child: Text(
                      'Hi, $name!',
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'My Closet',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 200,
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.transparent,
                      child: TextButton(
                        onPressed: () {
                          _showActionSheet(context);
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          // primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(
                              color: Theme.of(context).brightness ==
                                      Brightness.light
                                  ? CupertinoColors.darkBackgroundGray
                                  : CupertinoColors.white,
                              width: 1.5,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 5.0),
                          child: Text(
                            "Add New",
                            style: TextStyle(
                              color: Theme.of(context).brightness ==
                                      Brightness.light
                                  ? CupertinoColors.darkBackgroundGray
                                  : CupertinoColors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
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
                            'https://images.unsplash.com/photo-1520591799316-6b30425429aa?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZmFzaGlvbiUyMGNsb3RoZXN8ZW58MHx8MHx8fDA%3D',
                            fit: BoxFit.cover,
                            width: 200,
                            height: 150,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            const Text(
                              'Tops',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  isHeart = !isHeart;
                                });
                              },
                              icon: const Icon(
                                CupertinoIcons.heart,
                                color: CupertinoColors.black,
                              ),
                            )
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
                            'https://images.unsplash.com/photo-1434389677669-e08b4cac3105?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGZhc2hpb24lMjBjbG90aGVzfGVufDB8fDB8fHww',
                            fit: BoxFit.cover,
                            width: 200,
                            height: 150,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            const Text(
                              'White V Neck Shirt',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  CupertinoIcons.heart,
                                  color: CupertinoColors.black,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: const Text('My Closet'),
        message: const Text(
            'Add new fashion to your closet & Also create or add new collection\'s, or post to your fashion feed👕'),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            //  isDefaultAction: true,
            onPressed: () async {
              await Future.delayed(const Duration(seconds: 0));
              // ignore: use_build_context_synchronously
              Navigator.pop(context);
              // ignore: use_build_context_synchronously
              Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => const FashionScreen()));
            },
            child: const Text('Add Fashion'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => const NewPost()));
            },
            child: const Text('New Post'),
          ),
          CupertinoActionSheetAction(
            // isDestructiveAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Create Collection'),
          ),
          CupertinoActionSheetAction(
            isDestructiveAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
