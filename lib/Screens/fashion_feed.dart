import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FashionFeed extends StatefulWidget {
  const FashionFeed({super.key});

  @override
  State<FashionFeed> createState() => _FashionFeedState();
}

bool isHeart = false;

class _FashionFeedState extends State<FashionFeed> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Fashion Feed'),
        trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.at_badge_plus,
              color: CupertinoColors.black,
              size: 20,
            )),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1621184455862-c163dfb30e0f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFzaGlvbiUyMGdpcmx8ZW58MHx8MHx8fDA%3D'),
                  ),
                ),
                const Text('Sofia_91'),
                const SizedBox(
                  width: 230,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.ellipsis_vertical,
                    color: CupertinoColors.black,
                    size: 20,
                  ),
                )
              ],
            ),
            const Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.0, right: 10),
                    child: Text(
                        'Hey, Guys hope you all doing good check my new portfolio on github!'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          if (isHeart) {
                            setState(() {
                              isHeart = !isHeart; // Toggle the isHeart state
                            });
                          } else {
                            setState(() {
                              isHeart = true;
                            });
                          }
                        });
                        // isHeart = false;
                      },
                      icon: Icon(
                        isHeart
                            ? CupertinoIcons.heart_fill
                            : CupertinoIcons.heart,
                        color: isHeart
                            ? CupertinoColors.systemPink
                            : CupertinoColors.black,
                        size: 20,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.at,
                        color: CupertinoColors.black,
                        size: 20,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.arrow_2_squarepath,
                        color: CupertinoColors.black,
                        size: 20,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.share,
                        size: 20,
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
