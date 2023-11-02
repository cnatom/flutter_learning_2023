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
      body: SingleChildScrollView(
        child: Column(
          children: [


            _buildContainer(
                title: "我是标题",
                child: Column(
                  children: [
                    _buildBlock(),
                    _buildBlock(color: Colors.red)
                  ],
                )
            )


          ],
        ),
      ),
    );
  }

  Widget _buildBlock({Color color = Colors.blue}) {
    return Container(
      height: 50,
      width: 50,
      color: color,
    );
  }

  Widget _buildContainer({String? title, Widget? child}) {
    Widget titleWidget = Container();
    if (title != null) {
      titleWidget = Text(
        title,
        style: const TextStyle(color: Colors.blue, fontSize: 20),
      );
    }
    return Column(
      children: [
        Divider(),
        titleWidget,
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
          child: child,
        )
      ],
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
