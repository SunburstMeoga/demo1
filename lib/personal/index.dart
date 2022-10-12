import 'package:flutter/material.dart';

class PersonalIndex extends StatefulWidget {
  const PersonalIndex({Key? key}) : super(key: key);

  @override
  State<PersonalIndex> createState() => _PersonalIndexState();
}

class _PersonalIndexState extends State<PersonalIndex> {
//弹出框
  _alertDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('this is dialog'),
            content: const Text('this is content'),
            actions: [
              TextButton(
                  onPressed: () {
                    debugPrint('click confirm');
                    Navigator.pop(context);
                  },
                  child: const Text('确定')),
              TextButton(
                  onPressed: () {
                    debugPrint('click cancle');
                    Navigator.pop(context);
                  },
                  child: const Text('取消'))
            ],
          );
        });
  }

//底部分享弹窗
  _modelBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 220,
            child: Column(
              children: [
                ListTile(title: Text('第一项')),
                Divider(),
                ListTile(title: Text('第er项')),
                Divider(),
                ListTile(title: Text('第三项')),
                Divider(),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('弹出框')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: _alertDialog,
                child: const Text('alert弹出框-AlertDialog')),
            ElevatedButton(
                onPressed: _modelBottomSheet, child: const Text('底部分享框'))
          ],
        ),
      ),
    );
  }
}
