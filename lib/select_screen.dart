import 'package:flutter/material.dart';
import 'package:spotify_ui/components/logo.dart';
import 'package:spotify_ui/login_screen.dart';
import 'package:spotify_ui/signup_screen.dart';

class SelectSign extends StatelessWidget {
  const SelectSign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        height: 200,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.bottomLeft,
            image: AssetImage('images/green.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Logo(),
            const SizedBox(
              height: 40,
            ),
            const Text('Enjoy listening to music'),
            const Text(
                'Spotify is a proprietary Swedish audio streaming and media services provider '),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()),
                    );
                  },
                  child: Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                        color: const Color(0xff42C83C),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(child: Text('Register')),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  child: Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                        color: const Color(0xff42C83C),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(child: Text('Sign in')),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
