import 'package:fashion_media/UI/buttonbar3.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 300,
              ),
              Lottie.network(
                  height: 400,
                  width: 400,
                  repeat: true,
                  'https://lottie.host/afbe5c63-36ff-4fb6-a348-2c4e445f2eac/rxQv6WLgXn.json')
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Say, Hello to Fashion!',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to Fashion media!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButtonBar3(),
            ],
          )
        ],
      ),
    ));
  }
}
