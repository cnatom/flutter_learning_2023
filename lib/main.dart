// 导入flutter的ui库
import 'package:flutter/material.dart';

// 通过runApp函数启动App
main() => runApp(MyApp());

// 在空白处输入stl即可生成以下Stateless无状态页面
class MyApp extends StatelessWidget {
  // 这里的key相当于MyApp的"身份证"，现在先不要管
  const MyApp({Key? key}) : super(key: key);

  // build方法用于描述页面的形状
  @override
  Widget build(BuildContext context) {
    // MaterialApp是整个App的配置！
    // 整个App只允许有一个MaterialApp
    return MaterialApp(
      // 这个App的主页
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Scaffold是App页面的"模板"
    // 包含最常用的
    // -  顶栏：appBar
    // -  内容：body
    // -  底部导航栏：bottomNavigationBar
    // 图示：
    //  - https://book.flutterchina.club/assets/img/5-18.f83914b2.png
    //  - https://book.flutterchina.club/assets/img/5-19.a2dab018.png
    return Scaffold(
      // Scaffold的顶部工具栏appBar
      appBar: AppBar(
        // 左侧图标
        leading: IconButton(
          icon: Icon(Icons.ac_unit_outlined),
          onPressed: () {},
        ),
        // 标题
        title: Text("我的第一款App"),
        // 右侧图标
        actions: [
          IconButton(icon: Icon(Icons.share), onPressed: () {},),
          IconButton(icon: Icon(Icons.list), onPressed: () {})
        ],
      ),
      // 中间的body部分
      body: Center(
        child: Text("我是Body部分！"),
      ),
      // 底部导航栏bottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "主页"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "主页"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "主页"),
        ],
      ),
    );
  }
}
