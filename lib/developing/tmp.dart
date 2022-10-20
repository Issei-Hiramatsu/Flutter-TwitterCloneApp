import 'package:flutter/material.dart';

class tmpMyTabbedPage extends StatelessWidget {
  final profileimages = [
    'assets/images/face1.jpeg',
    'assets/images/face2.jpeg',
    'assets/images/face3.jpeg',
    'assets/images/face4.jpeg',
    'assets/images/face5.jpeg',
    'assets/images/face5.jpeg',
  ];
  final names = ['apple', 'orange', 'banana', 'guava', 'papaya', 'strawberry'];
  final usernames = [
    '@apple',
    '@orange',
    '@banana',
    '@guava',
    '@papaya',
    '@strawberry'
  ];
  final images = [
    null,
    'assets/images/image1.jpeg',
    null,
    'assets/images/face4.jpeg',
    null,
    'assets/images/image2.jpeg',
  ];
  final tweets = [
    'Create the highest, grandest vision possible for your life, because you become what you believe.',
    'When you can’t find the sunshine, be the sunshine',
    'The grass is greener where you water it',
    'Wherever life plants you, bloom with grace',
    'So, what if, instead of thinking about solving your whole life, you just think about adding additional good things. One at a time. Just let your pile of good things grow',
    'Little by little, day by day, what is mean for you WILL find its way',
  ];
  final replies = ['1', '15', '10', '19', '69', '3'];
  final retweets = ['10', '1k', '1', '9', '6', '30'];
  final likes = ['50', '10', '70', '2', '5', '10'];

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

            // SliverList(
            //     delegate: SliverChildListDelegate([
            //   const Center(
            //     child: Text(
            //       'region: Japan',
            //       style: TextStyle(
            //           backgroundColor: Colors.white,
            //           color: Colors.grey,
            //           fontSize: 16.0),
            //     ),
            //   ),
            //   const Center(
            //     child: Text(
            //       'color: Brown',
            //       style: TextStyle(
            //         backgroundColor: Colors.white,
            //         color: Colors.grey,
            //         fontSize: 16.0,
            //       ),
            //     ),
            //   ),
            //   const SizedBox(height: 10.0),
            // ])),
            //  SliverFixedExtentList(
            //   itemExtent: 100,
            //   delegate:
            //       SliverChildBuilderDelegate((BuildContext context, int index) {
            //     return CardWidget(index: index);
            //   }, childCount: data.length),
            // ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          child: Text('ここにしゃしん'),
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            Row(children: [
                              Text(names[index]),
                              Text('@' + (names[index])),
                            ]),
                            Text('ここにツイートだよ'),
                            Row(),
                          ],
                        )),
                      ],
                    )
                  ],
                ),
                childCount: names.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
