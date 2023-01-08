import 'package:flutter/material.dart';
import 'package:spotify_ui/components/logo.dart';

class ChoseMode extends StatelessWidget {
  const ChoseMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        height: 200,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/wallpaper2.png'), fit: BoxFit.cover),
        ),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          const Logo(),
          const Text('Choose Mode'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey[600],
                      child: const Icon(
                        Icons.dark_mode,
                      )),
                  const Text('Dark Mode')
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey[600],
                      child: const Icon(
                        Icons.light_mode,
                      )),
                  const Text('Light Mode')
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
