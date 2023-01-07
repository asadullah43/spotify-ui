import 'package:flutter/material.dart';

class GetStartedScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  GetStartedScreen({Key? key}) : super(key: key);

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: // 1. Local image

// 2. Image from Internet
            Container(
      constraints: BoxConstraints.expand(),
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/wallpaper.png'), fit: BoxFit.cover),
      ),
      // Foreground widget here
    ));
  }
}
