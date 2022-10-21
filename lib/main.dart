import 'package:flutter/material.dart';
import 'package:twitterclone_app/widgets/app_drawer.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: AppDrawer(),
    );
  }
}
