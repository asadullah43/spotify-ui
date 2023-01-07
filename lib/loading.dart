import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Image(
        image: AssetImage('images/logo.png'),
        fit: BoxFit.cover,
      ),
    ));
  }
}