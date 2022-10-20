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
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
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
      ),
    );
  }
}
