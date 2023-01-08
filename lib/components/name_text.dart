import 'package:flutter/material.dart';

class NameText extends StatelessWidget {
  const NameText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Center(
          child: Text(
            'Log in',
          ),
        ),
        SizedBox(height: 16),
        Center(
          child: Text(
            'If you need any support click here',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
