// 导入flutter的ui库

import 'package:flutter/material.dart';
import 'package:flutter_learning/my_kxz_page.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildLayoutArea(),
            MyExpandContainer(title: "跳转到仿矿小助界面",click: (){
              toMyKxzPage(context);
            },)
          ],
        ),
      ),
    );
  }

  Widget _buildLayoutArea() {
    return Column(
      children: [
        MyExpandContainer(title: "Column:主轴", children: [
          _buildContainer(
              title: "Column: 主轴start",
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [_buildBlock(), _buildBlock(color: Colors.red)],
              )),
          _buildContainer(
              title: "Column: 主轴center",
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [_buildBlock(), _buildBlock(color: Colors.red)],
              )),
          _buildContainer(
              title: "Column: 主轴end",
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [_buildBlock(), _buildBlock(color: Colors.red)],
              )),
          _buildContainer(
              title: "Column: 主轴spaceAround",
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [_buildBlock(), _buildBlock(color: Colors.red)],
              )),
          _buildContainer(
              title: "Column: 主轴spaceBetween",
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [_buildBlock(), _buildBlock(color: Colors.red)],
              )),
        ]),
        MyExpandContainer(title: "Column:副轴", children: [
          _buildContainer(
              title: "Column: 副轴start",
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [_buildBlock(), _buildBlock(color: Colors.red)],
              )),
          _buildContainer(
              title: "Column: 副轴center",
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [_buildBlock(), _buildBlock(color: Colors.red)],
              )),
          _buildContainer(
              title: "Column: 副轴end",
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [_buildBlock(), _buildBlock(color: Colors.red)],
              )),
        ]),
        MyExpandContainer(title: "Row:主轴", children: [
          _buildContainer(
              title: "Row: 主轴start",
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [_buildBlock(), _buildBlock(color: Colors.red)],
              )),
          _buildContainer(
              title: "Row: 主轴center",
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [_buildBlock(), _buildBlock(color: Colors.red)],
              )),
          _buildContainer(
              title: "Row: 主轴end",
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [_buildBlock(), _buildBlock(color: Colors.red)],
              )),
          _buildContainer(
              title: "Row: 主轴spaceAround",
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [_buildBlock(), _buildBlock(color: Colors.red)],
              )),
          _buildContainer(
              title: "Row: 主轴spaceBetween",
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [_buildBlock(), _buildBlock(color: Colors.red)],
              )),
        ]),
        MyExpandContainer(title: "Row:副轴", children: [
          _buildContainer(
              title: "Row: 副轴start",
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [_buildBlock(), _buildBlock(color: Colors.red)],
              )),
          _buildContainer(
              title: "Row: 副轴center",
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [_buildBlock(), _buildBlock(color: Colors.red)],
              )),
          _buildContainer(
              title: "Row: 副轴end",
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [_buildBlock(), _buildBlock(color: Colors.red)],
              )),
        ]),
        MyExpandContainer(title: "Expanded", children: [
          _buildContainer(
              title: "简单使用:以Row为例",
              child: Row(
                children: [
                  Expanded(
                      child: _buildBlock(text: "我被包裹在了Expanded中\n我在主轴方向上展开了！")),
                  _buildBlock(color: Colors.red)
                ],
              )),
          _buildContainer(
              title: "使用flex控制展开的比例",
              child: Row(
                children: [
                  Expanded(flex: 3, child: _buildBlock(text: "flex:3")),
                  Expanded(
                      flex: 2,
                      child: _buildBlock(text: "flex:2", color: Colors.red)),
                  Expanded(
                      flex: 1,
                      child: _buildBlock(text: "flex:1", color: Colors.green))
                ],
              )),
        ]),
        MyExpandContainer(title: "Stack：无Position控制", children: [
          _buildContainer(
              title: "Stack默认alignment为topLeft",
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  _buildBlock(color: Colors.grey, sideLength: 200),
                  _buildBlock(color: Colors.blue, sideLength: 100),
                  _buildBlock(color: Colors.green, sideLength: 50),
                ],
              )),
          _buildContainer(
              title: "Alignment.center",
              child: Stack(
                alignment: Alignment.center,
                children: [
                  _buildBlock(color: Colors.grey, sideLength: 200),
                  _buildBlock(color: Colors.blue, sideLength: 100),
                  _buildBlock(color: Colors.green, sideLength: 50),
                ],
              )),
          _buildContainer(
              title: "Alignment.bottomRight",
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  _buildBlock(color: Colors.grey, sideLength: 200),
                  _buildBlock(color: Colors.blue, sideLength: 100),
                  _buildBlock(color: Colors.green, sideLength: 50),
                ],
              )),
        ]),
        MyExpandContainer(title: "Stack：有Position控制", children: [
          _buildContainer(
              title: "Position简单使用",
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Positioned(
                    left: 40,
                    top: 10,
                    child:
                        _buildBlock(text: "left: 40\ntop: 10", sideLength: 100),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 50,
                    child: _buildBlock(
                        text: "right: 0\nbottom: 50", sideLength: 100),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 70,
                    child: _buildBlock(
                        text: "left: 70\nbottom: 0", sideLength: 100),
                  ),
                ],
              )),
          _buildContainer(
              title: "Position.fill 占满Stack",
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Positioned.fill(
                      child: _buildBlock(
                          text: "我被包裹在了Position.fill中\n占满了所有空间！",
                          color: Colors.grey))
                ],
              )),
        ]),
      ],
    );
  }

  Widget _buildBlock(
      {String? text,
      Color color = Colors.blue,
      double sideLength = 50,
      double opacity = 1.0}) {
    return Opacity(
      opacity: opacity,
      child: Container(
        height: sideLength,
        width: sideLength,
        color: color,
        alignment: Alignment.center,
        child: text != null
            ? Text(
                text,
                style: const TextStyle(fontSize: 13, color: Colors.white),
                maxLines: 100,
              )
            : null,
      ),
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
        const Divider(),
        titleWidget,
        Container(
          width: double.infinity,
          height: 250.0,
          // 不到迫不得已，不要给Container设置height！ 此处仅仅用于演示
          // 外边距
          margin: const EdgeInsets.all(16),
          // 内边距
          padding: const EdgeInsets.all(0),
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
        icon: const Icon(Icons.ac_unit_outlined),
        onPressed: () {},
      ),
      title: const Text("布局演示"),
      actions: [
        IconButton(
          icon: const Icon(Icons.share),
          onPressed: () {},
        ),
        IconButton(icon: const Icon(Icons.list), onPressed: () {})
      ],
    );
  }
}

class MyExpandContainer extends StatefulWidget {
  // 标题
  final String title;
  // 点击按钮后会展开的组件,与click属性不能同时赋值
  final List<Widget>? children;
  // 点击事件，如果click被赋值，那么点击之后不会将children显示出来，而是会执行click()
  final void Function()? click;

  const MyExpandContainer(
      {Key? key, required this.title, this.children, this.click})
      : assert(
            (click != null && children == null) ||
                (click == null && children != null),
            "Do not use click and children at the same time."),
        super(key: key);

  @override
  State<MyExpandContainer> createState() => _MyExpandContainerState();
}

class _MyExpandContainerState extends State<MyExpandContainer> {
  bool expanded = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          widget.title,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                          maxLines: 100,
                        ),
                      ),
                      AnimatedCrossFade(
                          firstChild: const Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.white,
                          ),
                          secondChild: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          ),
                          crossFadeState: expanded
                              ? CrossFadeState.showFirst
                              : CrossFadeState.showSecond,
                          duration: const Duration(milliseconds: 500))
                    ],
                  ),
                ],
              ),
            ),
            widget.children != null
                ? AnimatedCrossFade(
                    firstChild: Container(),
                    secondChild: Container(
                      margin: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        children: widget.children!,
                      ),
                    ),
                    crossFadeState: expanded
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    duration: const Duration(milliseconds: 500))
                : Container()
          ],
        ),
        Positioned.fill(child: InkWell(
          onTap: () {
            if(widget.click==null){
              setState(() {
                expanded = !expanded;
              });
            }else{
              widget.click!();
            }
          },
        ))
      ],
    );
  }
}
