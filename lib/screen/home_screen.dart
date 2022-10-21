import 'package:flutter/material.dart';

import '../widget/app_bar.dart';
import '../widget/bottom_navigation_bar.dart';

class TwitterHomeScreen extends StatelessWidget {
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
            TwitterAppBar(),
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
                            Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'ここにツイートだよ',
                                )),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.chat_bubble_outline),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.favorite_border),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.autorenew),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.upgrade_outlined),
                                  ),
                                ]),
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
      bottomNavigationBar: TwitterBottomNavigationBar(),
    );
  }
}
