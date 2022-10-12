import 'package:flutter/material.dart';

class HomeIndex extends StatefulWidget {
  const HomeIndex({Key? key}) : super(key: key);

  @override
  State<HomeIndex> createState() => _HomeIndexState();
}

class _HomeIndexState extends State<HomeIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('首页 ')), body: CSPageList());
  }
}

class CSPageList extends StatelessWidget {
  List pageList = [
    {'title': '弹出框', 'pageRoute': '/dialog', 'pageTitle': '弹出框'},
    // {'title': '弹出框', 'pageRoute': '/dialog'},
    // {'title': '弹出框', 'pageRoute': '/dialog'},
    // {'title': '弹出框', 'pageRoute': '/dialog'}
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        ListView.builder(
            shrinkWrap: true,
            itemCount: pageList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('${pageList[index]['title']}'),
                trailing: Icon(Icons.chevron_right_outlined),
                leading: Icon(Icons.home),
                onTap: () {
                  print('${pageList[index]['pageTitle']} $index');
                  Navigator.pushNamed(
                      context, '${pageList[index]['pageRoute']}', arguments: {
                    "pageTitle": '${pageList[index]['pageTitle']}'
                  });
                },
              );
            }),
      ],
    ));
  }
}
