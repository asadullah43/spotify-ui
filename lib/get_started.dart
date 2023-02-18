import 'package:flutter/material.dart';
import 'package:spotify_ui/components/button.dart';
import 'package:spotify_ui/components/logo.dart';

import 'package:spotify_ui/select_screen.dart';

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
        body: Container(
      constraints: const BoxConstraints.expand(),
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/wallpaper.png'), fit: BoxFit.fill),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Logo(),
          const SizedBox(
            height: 100,
          ),
          const Text('Enjoy listening to music '),
          const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.'),
          Button(
            title: 'Get Started',
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SelectSign()),
              );
            },
          )
        ],
      ),
    ));
  }
}
