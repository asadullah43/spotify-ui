import 'package:flutter/material.dart';
import 'package:spotify_ui/components/button.dart';
import 'package:spotify_ui/components/logo.dart';
import 'package:spotify_ui/components/name_text.dart';
import 'package:spotify_ui/components/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Logo(),
            const SizedBox(
              height: 40,
            ),
            const NameText(),
            const SizedBox(
              height: 40,
            ),
            const MyTextField(
              hintText: 'Enter username or email',
            ),
            const SizedBox(height: 20),
            const MyTextField(
              hintText: 'Password',
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('Recovery Password'),
            // ignore: prefer_const_constructors
            Button(),
            // ignore: prefer_const_literals_to_create_immutables
            Row(children: <Widget>[
              const Expanded(child: Divider(color: Colors.white)),
              const Text("OR"),
              const Expanded(child: Divider(color: Colors.white)),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.apple),
                Icon(Icons.apple),
              ],
            ),

            const Text('not a member ? register now')
          ],
        ),
      ),
    );
  }
}
