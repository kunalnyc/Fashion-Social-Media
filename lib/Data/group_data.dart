import 'package:fashion_media/models/group_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// GroupInterface class
class GroupInterface extends StatelessWidget {
  GroupInterface({
    super.key,
  });

  // Define a list of group details
  final List<GroupDetail> groups = [
    GroupDetail(
      title: 'Fashion World',
      subtitle:
          'Hey, this is the entire fashion world. Join us, please, and contribute your thoughts!',
      leadingImage:
          'https://images.unsplash.com/photo-1445205170230-053b83016050?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHx8fDA%3D', // Replace with the actual image path
    ),
    GroupDetail(
      title: 'Fashion Enthusiasts Club',
      subtitle:
          'Explore the latest in technology, share insights, and discuss innovations in this group dedicated to tech enthusiasts. From coding to gadgets, let\'s stay on the cutting edge!',
      leadingImage:
          'https://images.unsplash.com/photo-1706591789943-e32e814413ef?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHx8', // Replace with the actual image path
    ),
    // Add more group details as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: groups.length,
      itemBuilder: (context, index) {
        return CupertinoListTile(
          // leading: Image.network(groups[index].leadingImage),
          leading: CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage(groups[index].leadingImage),
          ),
          title: Text(groups[index].title),
          subtitle: Text(groups[index].subtitle),
          trailing: CupertinoButton(
            child: const Text('Learn more'),
            onPressed: () {},
          ),
       
        );
      },
    );
  }
}
