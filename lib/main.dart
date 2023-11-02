// 导入flutter的ui库
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: [
          // 一个Container，提供用来演示布局的边框
          Container(
            width: double.infinity,
            height: 250.0,
            // 不到迫不得已，不要给Container设置height！ 此处仅仅用于演示
            // 外边距
            margin: EdgeInsets.all(16),
            // 内边距
            padding: EdgeInsets.all(0),
            // Container美化
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(8)),
            // 放在Container内的组件
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start, // 主轴 start
              crossAxisAlignment: CrossAxisAlignment.center, // 副轴 center
              children: [
                // 一个蓝色的小方块，用于演示布局
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.blue,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }


  AppBar _buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.ac_unit_outlined),
        onPressed: () {},
      ),
      title: Text("我的第一款App"),
      actions: [
        IconButton(
          icon: Icon(Icons.share),
          onPressed: () {},
        ),
        IconButton(icon: Icon(Icons.list), onPressed: () {})
      ],
    );
  }
}
