import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String title;
  final VoidCallback onPress;
  const Button({Key? key, required this.title, required this.onPress})
      : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
      child: InkWell(
        onTap: widget.onPress,
        child: Container(
          height: 92,
          decoration: BoxDecoration(
              color: const Color(0xff42C83C),
              borderRadius: BorderRadius.circular(30)),
          child: Center(child: Text(widget.title)),
        ),
      ),
    );
  }
}
