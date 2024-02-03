import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FashionFeed extends StatefulWidget {
  const FashionFeed({super.key});

  @override
  State<FashionFeed> createState() => _FashionFeedState();
}

bool isHeart = false;
List<bool> isHeartList = [false, false];

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
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
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
                        'Hey, Guys Checkout my new COLLECTION!'),
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
                ),
              ],
            ),
            //Start 2nd Post fro here
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
            const SizedBox(
              height: 10,
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
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 10),
                      child: Card(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 16,
                                height: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Image.network(
                                          'https://plus.unsplash.com/premium_photo-1675186049419-d48f4b28fe7c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8ZmFzaGlvbnxlbnwwfHwwfHx8MA%3D%3D',
                                          fit: BoxFit.cover,
                                          width: 200,
                                          height: 150,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(1.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Tops',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400),
                                        ),
                                        // IconButton(
                                        //   onPressed: () {
                                        //     setState(() {
                                        //       isHeart = !isHeart;
                                        //     });
                                        //   },
                                        //   icon: const Icon(
                                        //     CupertinoIcons.heart,
                                        //     color: CupertinoColors.black,
                                        //   ),
                                        // )
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
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Image.network(
                                          'https://plus.unsplash.com/premium_photo-1675186049574-061fba2d243c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGZhc2hpb258ZW58MHx8MHx8fDA%3D',
                                          fit: BoxFit.cover,
                                          width: 200,
                                          height: 150,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'White V Neck Shirt',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400),
                                        ),
                                        // IconButton(
                                        //     onPressed: () {},
                                        //     icon: const Icon(
                                        //       CupertinoIcons.heart,
                                        //       color: CupertinoColors.black,
                                        //     ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 16),
                            ],
                          ),
                        ),
                      )),
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
                          if (isHeartList[0]) {
                            setState(() {
                              isHeartList[0] =
                                  !isHeartList[0]; // Toggle the isHeart state
                            });
                          } else {
                            setState(() {
                              isHeartList[0] = true;
                            });
                          }
                        });
                        // isHeart = false;
                      },
                      icon: Icon(
                        isHeartList[0]
                            ? CupertinoIcons.heart_fill
                            : CupertinoIcons.heart,
                        color: isHeartList[0]
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
                ),
              ],
            ),
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
                        'Hey, Guys Checkout my new COLLECTION!'),
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
