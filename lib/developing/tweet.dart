import 'package:flutter/material.dart';

class MyTabbedPage extends StatelessWidget {
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage('assets/images/face1.jpeg'),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 8,
                              right: 8,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                //ツイートの上記たぶ
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          names[index],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            usernames[index],
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),

                                //ツイート画面
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 0.0, bottom: 8.0),
                                  child: Text(
                                    tweets[index],
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),

                                //画像
                                Container(
                                  child: images[index] == null
                                      ? null
                                      : Container(
                                          width: double.infinity,
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                  images[index] as String)),
                                        ),
                                ),

                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 8, 16, 8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(
                                            height: 10.0,
                                            width: 18.0,
                                            child: IconButton(
                                              padding: new EdgeInsets.all(0.0),
                                              icon: Icon(
                                                Icons.chat_bubble_outline,
                                                size: 18.0,
                                                color: Colors.grey,
                                              ),
                                              onPressed: () {},
                                            ),
                                          ),
                                          SizedBox(
                                              height: 10.0,
                                              width: 18.0,
                                              child: Text(
                                                replies[index],
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              )),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(
                                            height: 10.0,
                                            width: 18.0,
                                            child: IconButton(
                                              padding: new EdgeInsets.all(0.0),
                                              icon: Icon(
                                                Icons.replay,
                                                size: 18.0,
                                                color: Colors.grey,
                                              ),
                                              onPressed: () {},
                                            ),
                                          ),
                                          SizedBox(
                                              height: 10.0,
                                              width: 18.0,
                                              child: Text(
                                                retweets[index],
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              )),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(
                                            height: 10.0,
                                            width: 18.0,
                                            child: IconButton(
                                              padding: new EdgeInsets.all(0.0),
                                              icon: Icon(
                                                Icons.favorite_border,
                                                size: 18.0,
                                                color: Colors.grey,
                                              ),
                                              onPressed: () {},
                                            ),
                                          ),
                                          SizedBox(
                                              height: 10.0,
                                              width: 18.0,
                                              child: Text(
                                                likes[index],
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              )),
                                          SizedBox(
                                            height: 10.0,
                                            width: 10.0,
                                            child: IconButton(
                                              padding: new EdgeInsets.all(0.0),
                                              icon: Icon(
                                                Icons.share,
                                                size: 18.0,
                                                color: Colors.grey,
                                              ),
                                              onPressed: () {},
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Container(
                        width: double.infinity,
                        color: Colors.grey,
                        height: 0.5,
                      ),
                    )
                  ],
                ),
                childCount: names.length,
              ),
            )
          ],
        ),
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
