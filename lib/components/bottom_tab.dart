// ignore_for_file: prefer_const_constructors

import 'package:demo1/components/iconfont.dart';
import 'package:flutter/material.dart';
import 'package:demo1/home/index.dart';
import 'package:demo1/store/index.dart';
import 'package:demo1/personal/index.dart';

class BottomTab extends StatefulWidget {
  const BottomTab({Key? key}) : super(key: key);

  @override
  State<BottomTab> createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  int currentIndex = 0; //当前tab下标
  List pageList = [HomeIndex(), StoreIndex(), PersonalIndex()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Lotto')),
      body: pageList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int index) => {
          setState(() {
            currentIndex = index;
          })
        },
        iconSize: 30.0,
        // 选中图标的颜色
        fixedColor: Colors.blue,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: "商城"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "我的")
        ],
      ),
      drawer: Drawer(
        child: Text('this is drawer'),
      ),
      endDrawer: Drawer(
        child: Text('this is right drawer'),
      ),
    );
  }
}
