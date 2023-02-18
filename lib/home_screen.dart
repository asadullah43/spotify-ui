import 'package:flutter/material.dart';
import 'package:spotify_ui/components/logo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.search),
        title: const Center(child: Logo()),
        actions: const [
          Icon(Icons.more_vert),
          SizedBox(
            width: 20,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(140.0),
          child: Stack(
            children: [
              Container(
                height: 118.0,
                width: 334,
                decoration: BoxDecoration(
                  color: const Color(0xff42C83C),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(
                          'New Album',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Happier Than \n Ever',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Billie Eilish',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 8.0,
                top: 0.0,
                bottom: 2,
                child: Image.asset(
                  'images/billie-eilish.png',
                  width: 250.0,
                  height: 50.0,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 27),
              child: SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Text('News',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    SizedBox(
                      width: 47,
                    ),
                    Text('Video',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    SizedBox(
                      width: 47,
                    ),
                    Text('Artist',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    SizedBox(
                      width: 47,
                    ),
                    Text('Podcast',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    SizedBox(
                      width: 47,
                    ),
                    Text('Seemore',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34),
              child: SizedBox(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        children: [
                          Image.asset("images/Rectangle 8.png"),
                          const Icon(Icons.play_circle),
                          const Text("Bad Guy",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          const Text("Billie Eilish",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      const SizedBox(
                        width: 27,
                      ),
                      Column(
                        children: [
                          Image.asset("images/Rectangle 9.png"),
                          const Icon(Icons.play_circle),
                          const Text("Scorpion",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          const Text("Drake",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      const SizedBox(
                        width: 27,
                      ),
                      Column(
                        children: [
                          Image.asset("images/Rectangle 8.png"),
                          const Icon(Icons.play_circle),
                          const Text("Bad Guy",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          const Text("Billie Eilish",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      const SizedBox(
                        width: 27,
                      ),
                      Column(
                        children: [
                          Image.asset("images/Rectangle 9.png"),
                          const Icon(Icons.play_circle),
                          const Text("Bad Guy",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          const Text("Billie Eilish",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Playlist',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('See More',
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            ),
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              leading: const Icon(Icons.play_circle),
              title: const Text('As it Was',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('Harry Style'),
              trailing: SizedBox(
                width: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text('5:33'),
                    Icon(Icons.favorite_border_rounded)
                  ],
                ),
              ),
            ),
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              leading: const Icon(Icons.play_circle),
              title: const Text('As it Was',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('Harry Style'),
              trailing: SizedBox(
                width: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text('5:33'),
                    Icon(Icons.favorite_border_rounded)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 40,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.play_circle,
              size: 40,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
              size: 40,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              size: 40,
            ),
            label: '',
          ),
        ],
        selectedItemColor: const Color(0xff42C83C),
      ),
    );
  }
}
