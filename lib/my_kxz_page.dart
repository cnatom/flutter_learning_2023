import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 跳转至QQ界面
toMyKxzPage(BuildContext context) {
  Navigator.of(context)
      .push(CupertinoPageRoute(builder: (context) => const MyKxzPage()));
}

class MyKxzPage extends StatelessWidget {
  const MyKxzPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
