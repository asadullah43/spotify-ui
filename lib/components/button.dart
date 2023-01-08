import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
      child: Container(
        height: 92,
        decoration: BoxDecoration(
            color: const Color(0xff42C83C),
            borderRadius: BorderRadius.circular(30)),
        child: const Center(child: Text('Get Started')),
      ),
    );
  }
}
