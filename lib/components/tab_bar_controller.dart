import 'package:flutter/material.dart';

class TabbarControllerPage extends StatefulWidget {
  const TabbarControllerPage({Key? key}) : super(key: key);

  @override
  State<TabbarControllerPage> createState() => _TabbarControllerPageState();
}

class _TabbarControllerPageState extends State<TabbarControllerPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
    _tabController.addListener(() {
      print('选中的tab${_tabController.index}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('TabbarControllerPage'),
          bottom: TabBar(
            controller: _tabController,
            tabs: [Text('最新 Newest'), Text('最热 Hotest')],
          )),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView(
            children: [
              ListTile(title: Text('这是第一个Tab')),
              ListTile(title: Text('这是第一个Tab')),
              ListTile(title: Text('这是第一个Tab')),
            ],
          ),
          ListView(
            children: [
              ListTile(title: Text('这是第2个Tab')),
              ListTile(title: Text('这是第2个Tab')),
              ListTile(title: Text('这是第2个Tab')),
            ],
          )
        ],
      ),
    );
  }
}
