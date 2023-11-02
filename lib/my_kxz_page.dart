import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 跳转到本页面
toMyKxzPage(BuildContext context) {
  Navigator.of(context)
      .push(CupertinoPageRoute(builder: (context) => const MyKxzPage()));
}

class MyKxzPage extends StatelessWidget {
  const MyKxzPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("在body属性写这个界面，使用系统返回按钮返回上一页"),
      ),
    );
  }
}
