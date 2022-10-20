import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: TwitterBodyPage(),
    );
  }
}

class TwitterBodyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //statusbarと色が被っているため
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            floating: true,
            elevation: 0,
            leading: Builder(
              builder: (BuildContext context) {
                return SizedBox(
                  width: 30.0,
                  height: 30.0,
                  child: TextButton(
                    onPressed: () {},
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage('assets/images/face1.jpeg'),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            title: Image.asset('assets/images/icon-480.png', height: 40),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.all(6),
                child: IconButton(
                    icon: const Icon(
                      Icons.auto_awesome,
                      size: 28,
                      color: Colors.black,
                    ),
                    onPressed: () {}),
              ),
            ],
            backgroundColor: Colors.white,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0.0),
              child: Container(
                color: Colors.grey.shade200,
                height: 1.0,
              ),
            ),
          ), // SliverAppBar
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: '',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: '',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            activeIcon: Icon(Icons.notifications),
            label: '',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline),
            activeIcon: Icon(Icons.mail),
            label: '',
            backgroundColor: Colors.pink,
          ),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        enableFeedback: true,
        iconSize: 18,
        selectedIconTheme: const IconThemeData(size: 30, color: Colors.blue),
        unselectedIconTheme: const IconThemeData(size: 28, color: Colors.grey),
      ),
    );
  }
}
